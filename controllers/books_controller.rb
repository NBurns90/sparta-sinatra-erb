class BooksController < Sinatra::Base

# Sets routes of the partents directory of the current file
set :root, File.join(File.dirname(__FILE__), '..')

# Sets the view directory correctly
set :view, Proc.new { File.join(root, "views") }

# Enable Reloader
configure :development do
  register Sinatra::Reloader
end




# Landing Page
 get '/' do
   '<h1>This is the blank Landing Page</h1>'
 end

 get '/books' do

   erb :'books/index'
 end

 get '/books/new' do

   erb :'books/new'
 end

 get '/books/:id' do

   erb :'books/:id'
 end

 get '/books/:id/edit' do
   
   erb :'books/:id/edit'
 end

end
