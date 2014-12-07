Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'
  # Set Root
  root 'welcome#index'

  # Mount Rails Admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Mount Grape API & Swagger
  mount Technician::API => '/api'
  mount GrapeSwaggerRails::Engine => '/apidoc'

end
