# frozen_string_literal: true

Rails.application.routes.draw do
  root 'boards#home'

  resources :boards
end
