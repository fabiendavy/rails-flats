Rails.application.routes.draw do
  root to: "flats#index"
  resources :flats do
    resources :flat_images, only: [:new, :create]
  end
end
