Rails.application.routes.draw do
  get '/' => 'cooks#index'
  get 'cooks/likes' => 'cooks#likes'

  resources :cooks
end
