Delfx2::Application.routes.draw do
  
  resources :graphics
  resources :g_boards, only: :show

  resources :storyboards
  resources :boards, only: :show

  resources :s_boards, only: :show
  resources :styleboards

  resources :works
  root 'works#welcome'

  # get 'works/contact', to: 'works#contact', as: 'contact'

end
