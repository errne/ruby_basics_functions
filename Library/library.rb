class Library
  attr_reader :books

  def initialize(books)
    @books = books
  end

  def check_book_info(book_name)
    the_book = nil
    for book in books
      if book[:title] == book_name
        the_book = book
      end
    end
      return the_book
    end

    def check_book_rental_details(book_name)
      rental_details = nil
      for book in books
        if book[:title] == book_name
          rental_details = book[:rental_details]
        end
      end
        return rental_details
    end

    def add_new_book(book_name)
      @books << {        title: book_name,
        rental_details: {
          student_name: "",
          date: ""}
        }
    end

    def change_renting_details(book_name, student_name, due_date)
      new_rental_details = check_book_rental_details(book_name)
      new_rental_details[:student_name] = student_name
      new_rental_details[:date] = due_date
    end

  end
