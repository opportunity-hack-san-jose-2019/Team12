Rails.application.routes.draw do
  root to: "home#index"
  get 'landing', action: :index, controller: 'home'
  get 'interviewer_checkin', action: :interviewer_checkin, controller: 'home'
  get 'interviewee_checkin', action: :interviewee_checkin, controller: 'home'

  devise_for :admins
end
