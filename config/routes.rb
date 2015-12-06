Rails.application.routes.draw do

  resources :buildings
  resources :reservations
  resources :rooms
  root                        'home#index'
  get       'about'       =>  'home#about'
  get       'calendar'    =>  'home#calendar'
  get       'faq'         =>  'home#faq'
  get       'contact'     =>  'home#contact'
  get       'test1'       =>  'home#test1'
  get       'confirmation' => 'home#confirmation'

  devise_for :users

end
