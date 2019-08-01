Rails.application.routes.draw do
  # creating todo resource with a nested items resource, enforcing 1:m association at the routing level
  resources :todos do
    resources :items
  end
end
