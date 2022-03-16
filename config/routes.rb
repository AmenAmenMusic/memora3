Rails.application.routes.draw do
  resources :filieres
  resources :requetes
  devise_for :maitres, path: 'maitres',
  controllers: 
{ sessions: 'maitres/sessions',
registrations: 'maitres/registrations',
passwords:   'maitres/passwords',
confirmations:   'maitres/confirmations',
unlocks: 'maitres/unlocks'
}
  devise_for :etudiants, path: 'etudiants',
                     controllers: 
        { sessions: 'etudiants/sessions',
          registrations: 'etudiants/registrations',
          passwords:   'etudiants/passwords',
          confirmations:   'etudiants/confirmations',
          unlocks: 'etudiants/unlocks'
        }

        patch 'home/index' => 'home#update'

  get 'home/index'

  post 'accept/:id' => 'home#accepter', as: "accepter"
  post 'refuse/:id' => 'home#refuser', as: "refuser"
  

  get 'home/private'

  post 'request' => "home#createreq"

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

