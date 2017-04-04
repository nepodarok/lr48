Rails.application.routes.draw do

  devise_for :users



root 'products#index'



    scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do

    namespace :admin do
      root 'products#index'
      resources :products
      resources :categories
    end

      match "*path", to: redirect("/#{I18n.default_locale}/%{path}"), via: :all
      match "", to: redirect("/#{I18n.default_locale}/"), via: :all
  	end



end
