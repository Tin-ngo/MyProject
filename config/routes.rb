Rails.application.routes.draw do
  
  get 'cuahangs/index'
  devise_for :users
  get 'homes/index'
  get 'trangchus/index'
  get 'danhmucs/index'
  get 'hoadons/index'
  get 'products/index'

  root "homes#index"

  get "/trangchus", to: "trangchus#index"
  # get "/users", to: "users#index" 
  # get "/users/:id", to: "users#show" 
 
  resources :categorys
#của model product
  # get "/products", to: "products#index"
  # get "/products/:id", to: "products#show"
  resources :products
#của model hoadon
  # get "/hoadons", to: "hoadons#index"
  # get "/hoadons/:id", to: "hoadons#show"
  resources :hoadons

  #của model danhmuc
  # get "/danhmucs", to: "danhmucs#index"
  # get "/danhmucs/:id", to: "danhmucs#show"
  resources :danhmucs

  get "/homes", to: "homes#index"

  resources :homes

  get "/users", to: "users#index"


  resources :cuahangs

end