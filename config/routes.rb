Rails.application.routes.draw do
  devise_for :usuarios, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  get 'welcome/index'
  resources :projetos do
    resources :trabalhos
    resources :bibliografia
    resources :atividades
  end
  resources :atividades do
    resources :historico_atividades
  end
  root 'welcome#index'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end