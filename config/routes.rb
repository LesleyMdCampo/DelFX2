Delfx2::Application.routes.draw do
  resources :styleboards

  resources :works
  root 'works#welcome'

end
