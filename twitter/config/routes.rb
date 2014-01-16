Twitter::Engine.routes.draw do
   resources :admin do
    post 'post_tweet', :on => :collection
  end

  resources :profile do
   get 'follow_me', :on => :member
   get 'unfollow_me', :on => :member
 
  end

   root :to => 'admin#index'
end
