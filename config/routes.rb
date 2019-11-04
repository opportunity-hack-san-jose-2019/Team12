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
  get 'thank_you', action: :thank_you, controller: 'home'
  get 'dashboard', action: :dashboard, controller: 'home'
  get 'charts', action: :charts, controller: 'home'
  get 'tables', action: :tables, controller: 'home'
  get 'push', action: :push_sms, controller: 'home'

  devise_for :admins
end
