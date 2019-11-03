//Http handler for empty request
const api_query_handler(api_endpoint) => {
	const request = new Request(api_endpoint);
	const response = await fetch(api_endpoint);
	const myJson = away response.json();
	return myJson.payload;
}

//Http handler for posting
const api_post(api_endpoint, user_data) => {
	const request = new Request(interviewer_endpoint, {method: 'POST', body:user_data});
	const response = await fetch(api_endpoint);
	const myJson = await response.json();
	if(myJson.payload[0] === "JWT"){
		return true;
	} else{
		return false;
	}
}
