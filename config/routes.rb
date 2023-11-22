Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'mongols/show' => 'mongols#show'
  delete 'mongols/:id' => 'mongols#destroy'

  get 'mongols/new' => 'mongols#new'
  get 'mongols/sain1' => 'mongols#sain1'
  get 'mongols/sain2' => 'mongols#sain2'
  get 'mongols/sain3' => 'mongols#sain3'
  get 'mongols/sain4' => 'mongols#sain4'
  get 'mongols/khaan1' => 'mongols#khaan1'
  get 'mongols/khaan2' => 'mongols#khaan2'
  get 'mongols/khaan3' => 'mongols#khaan3'
  get 'mongols/khaan4' => 'mongols#khaan4'
  get 'mongols/khaan5' => 'mongols#khaan5'
  get 'mongols/khaan6' => 'mongols#khaan6'
  get 'mongols/khaan7' => 'mongols#khaan7'
  get 'mongols/khaan8' => 'mongols#khaan8'
  get 'mongols/mori1' => 'mongols#mori1'
  get 'mongols/mori2' => 'mongols#mori2'
  get 'mongols/mori3' => 'mongols#mori3'
  get 'mongols/mori4' => 'mongols#mori4'
  get 'mongols/mori5' => 'mongols#mori5'
  get 'mongols/ger1' => 'mongols#ger1'
  get 'mongols/ger2' => 'mongols#ger2'
  get 'mongols/ger3' => 'mongols#ger3'
  get 'mongols/ger4' => 'mongols#ger4'
  get 'mongols/ger5' => 'mongols#ger5'
  get 'mongols/ger6' => 'mongols#ger6'
  get 'mongols/ger7' => 'mongols#ger7'
  get 'mongols/nar1' => 'mongols#nar1'
  get 'mongols/nar2' => 'mongols#nar2'
  get 'mongols/nar3' => 'mongols#nar3'
  get 'mongols/nar4' => 'mongols#nar4'

  get 'mongols/:id' => 'mongols#detail' ,as: 'mongol'

  resources :mongols
  resources :users
  root 'mongols#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
