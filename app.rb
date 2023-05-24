require_relative 'lib/database_connection'
require_relative 'lib/book_repository'

DatabaseConnection.connect('book_store')

result = DatabaseConnection.exec_params('SELECT * FROM books;', [])

result.each do |book|
  p book
end