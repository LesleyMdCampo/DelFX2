Delfx2::Application.routes.draw do
  resources :works
  root 'works#welcome'

end
