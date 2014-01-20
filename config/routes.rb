Delfx2::Application.routes.draw do
  resources :boards

  resources :storyboards

  resources :s_boards

  resources :styleboards

  resources :works
  root 'works#welcome'

end
