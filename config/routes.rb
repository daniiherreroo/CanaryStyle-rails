Rails.application.routes.draw do
  resources :camisetas_hombre
  resources :pantalones_hombre
  resources :chaquetas_hombre
  resources :banadores_hombre
  resources :complementos_hombre
  resources :camisetas_mujer
  resources :pantalones_mujer
  resources :chaquetas_mujer
  resources :bikinis_mujer
  resources :complementos_mujer
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
