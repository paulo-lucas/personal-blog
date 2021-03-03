Rails.application.routes.draw do
  root "home#index"
  get "/:id", to: "articles#show"
end
