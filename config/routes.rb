Rails.application.routes.draw do
# root :to =>"urls#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "urls" => "urls#index"
  get "urls/new"
  post "urls" => "urls#create"
  get "urls/:id" => "urls#show", :as => :url
  delete "urls/:id" => "urls#destroy"
  get 'urls/:id/:short_url' => "urls#short_url"
end
