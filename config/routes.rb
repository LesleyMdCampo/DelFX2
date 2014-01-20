Delfx2::Application.routes.draw do
  resources :s_boards

  resources :styleboards

  resources :works
  root 'works#welcome'

end
