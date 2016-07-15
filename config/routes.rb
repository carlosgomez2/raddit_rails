Rails.application.routes.draw do

  resources :comments
  root to: "links#index"

  devise_for :users

  resources :links do
    member do
      put "like", to: "links#upvote"
      put "dislike", to: "links#downvote"
    end
    resources :comments
  end

end
