get '/' do
  #list all posts
  erb :index
end

get '/url' do

  # redirect url
end

get '/comments/:post_id' do
  # A page showing a particular post, including comments

 erb :post_comments
end

get '/:user_id/posts' do 
# A page showing all a user's submissions

  erb :user_posts
end

get '/:user_id/comments' do
# A page sho wing all a user's comments
  erb :user_comments
end

get '/user/:id' do
  # render user profile page


  erb :profile
end



post '/comment' do 

end

post '/post' do 

end
