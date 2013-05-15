Scores::Application.routes.draw do
  get "students/home"
  get "students/firstresult"
  get "students/reexaminationresult"
  root :to => 'sessions#new'
  resources :sessions, only: [:index, :new, :create, :destory]
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy'
  match '/firstline', to: 'first_results#line'
  match '/reexaminationline', to: 're_examination_results#line'
  #resources :first_results, only: [:import, :index ] do
   # collection {post :import}

  #end
  match '/help', to: 'help#index'
end
