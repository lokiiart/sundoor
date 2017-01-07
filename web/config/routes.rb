Rails.application.routes.draw do
  resources :page_visitors
  get 'welcome/index'

  get 'welcome/copytowechat'

  get 'baidu/examine'
  mount Split::Dashboard, at: 'split'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'baidu#examine'
  root 'welcome#index'
end
