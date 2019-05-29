require("minitest/autorun")
require_relative("../student")

class TestStudent < MiniTest::Test

  def setup
    options = {"id" => 1, "first_name" => "Harry", "second_name" => "Potter", "house" => "Slytherin", "age" =>35}

    @student = Student.new(options)
  end

  def test_first_name()
    result = @student.first_name()
    assert_equal("Harry", result)
  end

  def test_second_name()
    result = @student.second_name()
    assert_equal("Potter", result)
  end

  def test_house()
    result = @student.house()
    assert_equal("Slytherin", result)
  end

  def test_age()
    result = @student.age()
    assert_equal(35, result)
  end

  # def test_house_id()
  #   result = @student.house()
  #   assert_equal("", result)
  # end

end
