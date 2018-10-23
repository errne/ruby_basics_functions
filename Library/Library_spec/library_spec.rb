require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup

    @books= [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "lord_of_the_flies",
        rental_details: {
          student_name: "Keff",
          date: "01/12/18"
        }
      }
    ]

    @library1 = Library.new(@books)

  end

  def test_books_array
    assert_equal(2, @library1.books.length)
  end

  def test_book_info_by_title
    assert_equal(@library1.books[1], @library1.check_book_info("lord_of_the_flies"))
    assert_equal(@books[1], @library1.check_book_info("lord_of_the_flies"))
  end

  def test_book_info_by_title__not_found
    assert_equal(nil, @library1.check_book_info("kill_the_flies"))
  end

  def test_book_rental_details_by_title
    assert_equal(@books[1][:rental_details],
      @library1.check_book_rental_details("lord_of_the_flies"))
  end

  def test_book_rental_details_by_title__not_found
    assert_equal(nil,
      @library1.check_book_rental_details("save_the_flies"))
  end

    def test_add_new_book
      @library1.add_new_book("ruby_for_dummies")
      assert_equal(3, @books.length)
      assert_equal(@books[-1], @library1.check_book_info("ruby_for_dummies"))
    end

    def test_change_renting_details
      @library1.change_renting_details("lord_of_the_flies",
        "Chris", "01/12/19")
        assert_equal("01/12/19", @books[1][:rental_details][:date])
        assert_equal("Chris", @books[1][:rental_details][:student_name])
      end
    end
