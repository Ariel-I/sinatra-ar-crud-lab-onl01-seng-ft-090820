
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

<<<<<<< HEAD
  get '/articles' do
    @articles = Article.all
    erb :index
  end	  

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    @article = Article.create(params)

    redirect to "/articles/#{@article.id}"
  end

  get '/articles/:id' do
    @article = Article.find_by_id(params[:id])

    erb :show
  end

  get '/articles/:id/edit' do
    @article = Article.find_by_id(params[:id])
    
    erb :edit
  end

  patch '/articles/:id' do
    @article = Article.find_by_id(params[:id])
    @article.update(params[:article])
    
    redirect to "/articles/#{@article.id}"
  end

  delete '/articles/:id' do
    Article.destroy(params[:id])
    
    redirect to '/articles'
  end
=======
  get '/articles' do 
    @articles = Article.all
    erb :index
  end 
  #good here
  
  get 'articles/new' do 
    erb :new 
  end

 post '/articles' do
    @article = Article.create(params)

    redirect to "/articles/id"
  end

  get '/articles/:id' do
    @article = Article.find_by_id(params[:id])

    erb :show
  end
  
  
 
  
  
  
  
>>>>>>> 4e87afc3b79eb26d0ba6cfff3b3fb094a850ab21
  
end
