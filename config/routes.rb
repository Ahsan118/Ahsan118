Rails.application.routes.draw do
  resources :doctors
  resources :patients
  resources :generate_appointments
  resources :dashboard do 
    collection do 
      get :available_doctors
    end
  end
  root to: "dashboard#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
