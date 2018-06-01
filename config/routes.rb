Rails.application.routes.draw do
  get 'admin/update',to: 'admin_pages#index'
  get 'update/home/:id', to: 'homes#index'
  patch 'update/home/:id' ,to: 'homes#update' , as: 'update/home/para/edit'
  # put 'update/home/:id' ,to: 'homes#updateHeading'
  get 'update/why-aruna/:id', to: "why_arunas#index"
  patch 'update/why-aruna/:id' ,to: 'why_arunas#update' , as: 'update/why-aruna/para/edit'

  get 'update/about_us/:id', to: "about_us#index"
  patch 'update/about_us/:id' ,to: 'about_us#update' , as: 'update/about_us/para/edit'
  
  get 'update/gallery/:id', to: "gallery#index"
  patch 'update/gallery/:id' ,to: 'gallery#update'
  patch 'update/gallery/category/:id' ,to: 'gallery#edit' ,as: 'update/gallery/category/edit'
  delete 'update/gallery/:id' ,to: 'gallery#destroy' , as: 'update/gallery/category/delete'

  # get 'update/infrastructure/:id', to: "infrastructures#index"
  get 'update/products/:id', to: "products#index"
  patch 'update/products/:id', to: "products#update"
  patch 'update/products/category/:id' ,to: 'products#edit' ,as: 'update/products/category/edit'
  delete 'update/products/:id' ,to: 'products#destroy' , as: 'update/products/category/delete'
  
  # get 'update/contacts/:id', to: "infrastructures#contact"		
  get 'admin_console', to: 'sessions#new'
  post 'admin_console' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
