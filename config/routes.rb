Rails.application.routes.draw do
  resources :interests
  resources :interviews
  resources :events
  root to: "home#index"
  get 'landing', action: :index, controller: 'home'
  get 'interviewer_checkin', action: :interviewer_checkin, controller: 'home'
  match '/interviewer_checkin' => 'home#check_in_interviewer', via: :post
  get 'interviewee_checkin', action: :interviewee_checkin, controller: 'home'
  match '/interviewee_checkin' => 'home#check_in_interviewee', via: :post

  devise_for :admins
end
