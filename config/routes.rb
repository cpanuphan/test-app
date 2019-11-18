Rails.application.routes.draw do
  get 'home/index'
  get '/testcases/run/:id', to: 'testcases#run', as: 'run'

  resources :testcases

  root 'testcases#index'
end
