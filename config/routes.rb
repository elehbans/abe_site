Rails.application.routes.draw do
root 'search#search'
post '/' => 'search#results'
get '/add' => "aberesource#add"
post '/add' => "aberesource#just_added"
get '/home' => "aberesource#user_home"
end
