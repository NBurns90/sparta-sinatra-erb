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
   '<h1>This is the index page for books</h1>'
 end

 get '/books/new' do
   '<h1>This is the page for adding new books</h1>'
 end

 get '/books/:id' do
   '<h1>This is the page for viewing each book</h1>'
 end

 get '/books/:id/edit' do
   '<h1>This is the page for editing existing books</h1>'
 end

end
