Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#index"

  resources :articles do
    # Comments are a nested resource within articles.
    # This means that a comment can only be created, read, updated, or deleted in the context of an article.
    resources :comments
  end

  # The `:id` denotes a route parameter. It is a placeholder for the actual ID of the article.
  # A route parameter caputres a segment of the request's path, and puts that value into the `params` hash.
  # When handling a request like `GET http://localhost:3000/articles/1`, `1` would be captures as the value for `:id`
  # which would then be accessible as `params[:id]` in the show action of the ArticlesController.
  # get '/articles/:id', to: 'articles#show'
end
