Rails.application.routes.draw do
  root to: "static_pages#index"
  get "/contact" => "static_pages#contact"
end
