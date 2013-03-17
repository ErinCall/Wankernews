Wankernews::Application.routes.draw do
  match '/newslogin/', :to => 'login#login'
  match '/newslogin/*whatever', :to => 'login#login'

  match '/s.gif', :to => "wanker#passthrough", :format => false
  match '/grayarrow.gif', :to => "wanker#passthrough", :format => false
  match '/y18.gif', :to => "wanker#passthrough", :format => false
  match '/*wankernews_path', :to => "wanker#wank", :format => false
  root :to => "wanker#wank"

end
