Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  get 'about', to: 'home#about'

  get 'reverse', to: 'reverse#show'
  post 'reverse/validate'

  get 'counter', to: 'counter#show'
  post 'counter/validate'

  get 'letter', to: 'letter#show'
  post 'letter/validate'

  get 'lookup', to: 'lookup#show'
  post 'lookup/validate'

  get 'freestyle', to: 'freestyle#show'
  post 'freestyle/validate'

  get 'spellchecker', to: 'spellchecker#show'

end
