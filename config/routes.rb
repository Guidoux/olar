Rails.application.routes.draw do

  devise_for :users, only: :omniauth_callbacks, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  
  scope "(:locale)", locale: /#{I18n.available_locales.join('|')}/ do 
    get 'welcome/thanks'
    devise_for :users, skip: :omniauth_callbacks
    root 'welcome#home'
  end
end