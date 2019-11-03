Admin.create({ email: 'admin@scu.edu', password: "password" })

["Business", "Public Relations", "Education", "Human Resources", "Health", "Technology",
 "Marketing", "Finance", "Communications", "Accounting", "Engineering", "Writing", "Management"].each do |n|
  Interest.create({ name: n })
end
