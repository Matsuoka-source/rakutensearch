Rails.application.routes.draw do
  get 'goods/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'goods#search'
end
