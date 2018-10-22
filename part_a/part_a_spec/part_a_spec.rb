require("minitest/autorun")
require("minitest/rg")
require_relative("../part_a")

class TestPart_A < MiniTest::Test

  def test_student_name
    student1 = Student.new("Jake", "E26")
    assert_equal("Jake", student1.name)
  end

  def test_student_cohort
    student1 = Student.new("Jake", "E26")
    assert_equal("E26", student1.cohort)
  end

  def test_set_student_name
    student2 = Student.new("Cat", "E26")
    student2.set_name("Fiona")
    assert_equal("Fiona", student2.name)
  end

  def test_set_student_cohort
    student3 = Student.new("Alex", "G9")
    student3.set_cohort("E26")
    assert_equal("E26", student3.cohort)
  end

  def test_make_student_talk
    student3 = Student.new("Alex", "G9")
    assert_equal("I can talk", student3.talk)
  end

  def test_favourite_language
    student3 = Student.new("Alex", "G9")
    assert_equal("I love Java", student3.say_favourite_language("Java"))
  end
end
