Rails.application.routes.draw do
  get '/private', to: 'page#private'
  get '/create_session', to: 'page#create_session'
  get '/delete_session', to: 'page#delete_session'
  root to: 'page#public'
end
