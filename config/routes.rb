Delfx2::Application.routes.draw do
  resources :graphics

  resources :boards

  resources :storyboards

  resources :s_boards

  resources :styleboards

  resources :works
  root 'works#welcome'

  get 'works/contact', to: 'works#contact', as: 'contact'

end
