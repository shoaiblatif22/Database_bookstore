require_relative './book'

class BookRepository
=begin
  def initialize(database_connection)
    @database_connection = database_connection
  end
=end
  
  def all
    sql = 'SELECT id, title, author_name FROM books;'
    result = DatabaseConnection.exec_params(sql, [])
    books = []
    result.each do |book|
      book_inst = Book.new
      book_inst.id = book['id']
      book_inst.title = book['title']
      book_inst.author_name = book['author_name']

      books << book_inst
    end

    return books

  end
end