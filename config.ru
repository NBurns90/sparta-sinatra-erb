require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/books_controller.rb'

run BooksController
