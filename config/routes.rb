Rails.application.routes.draw do
  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'
}

devise_scope :user do
  post "guest_login", :to => "users/sessions#guest_login"
  get "signup", :to => "users/registrations#new"
  get "login", :to => "users/sessions#new"
  get "logout", :to => "users/sessions#destroy"
end
  get '/' => 'home#top'
end
