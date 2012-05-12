CtaApp::Application.routes.draw do
 
  resources :landmarks

 get "/lines", :controller => "lines", :action => "index", :as => :lines
 post "lines", :controller => "lines", :action => "create"
 
 get "/lines/new", :controller => "lines", :action => "new", :as => :new_train_line
 get "/lines/:id", :controller => "lines", :action => "show", :as => :line
 
 get "/lines/:id/edit", :controller => "lines", :action => "edit", :as => :edit_train_line
 put "/lines/:id", :controller => "lines", :action => "update"
 
 delete "/lines/:id", :controller => "lines", :action => "eliminate"
end
