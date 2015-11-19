Rails.application.routes.draw do
root 'search#search'
post '/' => 'search#results'
get '/add' => "aberesource#add"
post '/add' => "aberesource#user_home"
end
