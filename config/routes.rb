Rails.application.routes.draw do

  # Public site
  root to: 'home#index'
  get 'about_us' => 'home#about_us', as: 'about_us'
  get 'pricing' => 'home#pricing', as: 'pricing'
  get 'consumers' => 'home#consumers', as: 'consumers'
  get 'enterprises' => 'home#enterprises', as: 'enterprises'
  get 'privacy_policy' => 'home#privacy_policy', as: 'privacy_policy'
  get 'terms_of_service' => 'home#terms_of_service', as: 'terms_of_service'
  resources :contacts, only: %i[new create update]
  get 'contacts/thank_you' => 'contacts#thank_you', as: :thank_you

  # Users Setup
  devise_for :users,
    :controllers => {
      registrations: 'users/registrations',
      sessions:      'users/sessions'
    }
end
