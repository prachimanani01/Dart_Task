class Book {
  String title;
  String author;
  String publisher;
  Book(this.title, this.author, this.publisher);
  void setTitle(String newTitle) {
    title = newTitle;
  }
  void setAuthor(String newAuthor) {
    author = newAuthor;
  }
  void setPublisher(String newPublisher) {
    publisher = newPublisher;
  }
  @override
  String toString() {
    return 'Book{title: $title, author: $author, publisher: $publisher}';
  }
}
void main() {
  Book book1 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner');
  Book book2 = Book('To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.');
  print(book1); 
  print(book2); 
  book1.setTitle('The Beautiful and Damned');
  book1.setPublisher('Charles Scribner''s Sons');
  print(book1); 
}