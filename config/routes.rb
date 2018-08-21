Rails.application.routes.draw do


  get '/cleaning/welcome'
  get '/cleaning/thanks'
  get '/schedules/new'
  get '/routines/new'
  get '/tasks/new', to: "tasks#new"
  get '/schedules/update', to: 'schedules#update'
  get '/current_schedule/edit', to: 'schedules#edit'
  get '/schedules/goodbye'


  post '/cleaning/welcome', to: 'schedules#new'
  post '/schedules/new', to:'schedules#create'
  post '/tasks/new', to: 'tasks#create'
  post '/schedules/goodbye', to: 'schedules#update'



  root 'cleaning#welcome'

  resources :tasks
  resources :schedules
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
