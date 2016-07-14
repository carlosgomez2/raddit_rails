Rails.application.routes.draw do

  root to: "links#index"

  devise_for :users

  resources :links do
    member do
      put "like", to: "links#upvote"
      put "dislike", to: "links#downvote"
    end
  end

end
