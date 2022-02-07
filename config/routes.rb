Rails.application.routes.draw do
  root to: 'tasks#home'
  resources :tasks
end