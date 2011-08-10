Modal::Application.routes.draw do

  match "jquery_ui/:factory", :controller => :jquery_ui, :action => :factory

  match "servers" => "servers#index"
  match "servers/:dialog" => "servers#dialog"
  match ':controller(/:action(/:id(.:format)))'
end
