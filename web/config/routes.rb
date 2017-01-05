Rails.application.routes.draw do
  get 'baidu/examine'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'baidu#examine'
end
