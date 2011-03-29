DummyApp::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  resources :products do
    collection do
       get :index_fancy
       get :index_simple
       get :index_filters
       get :index_select
       get :index_sort
       get :index_formatting
    end
  end

  resources :vendors

  root :to => redirect('/products')
  
end
