DeviseLoginUndefinedMethod::Application.routes.draw do
  devise_for :admins
  root "home#index"
end
