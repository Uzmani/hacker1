get '/login' do 
# render login

  erb :login
end

post '/signup' do 
  user = User.new(name: params[:name], email: params[:email])
  user.password = params[:password]
  user.save
end

post '/login' do 
  # user = User.find_by_email(params[:login][:email])
  # p uer
  p params[:login][:email]

  user = User.authenticate(params[:login][:email], params[:login][:password])
  if user
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end

get '/logout' do 
  session.clear

  redirect '/'
end
