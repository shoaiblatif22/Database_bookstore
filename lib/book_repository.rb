class BookRepository
  
  def all
    sql = 'SELECT id, title, author_name FROM books;'
    books = []
  end
end