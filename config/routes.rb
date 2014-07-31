Rails.application.routes.draw do

  get 'learn-to-code' => 'learn_to_code#index'

  get 'ios-development-course' => 'ios_development_course#index'

  root 'home#index'
  devise_for :users
  get 'privacy' => 'privacy#index'

  get 'info_thanks' => 'info_thanks#index'

  get 'thanks' => 'thanks#index'

  resources :course_applications

  resources :info_enquiries

  # resources :referral_enrolments

  # resources :enrolments

  resources :intakes

  # resources :workshops

  # resources :testimonials

  # resources :specials

  # resources :skill_levels

  # resources :skill_groups

  resources :referral_visits

  resources :referrers

  # resources :profiles

  # resources :posts

  resources :courses

  # resources :payments

  # resources :event_registrations

  # resources :events

  resources :locations

  # resources :enquiries

  # resources :categories

  # resources :banners

  get 'admin' => 'admin#index'

  
end
