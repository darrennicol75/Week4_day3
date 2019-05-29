require_relative('../db/sql_runner')
require_relative('./house')

class Student

  attr_reader :id, :first_name, :second_name, :house, :age

  def initialize ( options )
    @id = options[:id].to_i
    @first_name = options['first_name']
    @second_name = options['second_name']
    # @house = options['house']
    @age = options['age'].to_i
    @house_id = options['house_id'].to_i
  end

  def save()
    sql = "INSERT INTO students (
    first_name,
    second_name,
    house,
    age
    )
    VALUES($1, $2, $3, $4)
    RETURNING *"
    values = [@first_name, @second_name, @house, @age]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i
  end

  def update()
    sql = "UPDATE students SET (first_name, second_name, house, age) = ($1, $2, $3, $4) WHERE id = $5"
    values = [@first_name, @second_name, @house, @age, @id]
    SqlRunner.run( sql, values)
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run( sql )
    result = students.map { |student| Student.new( student) }
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SqlRunner.run( sql, values)
    result = Student.new ( student.first )
    return result
  end

  # def house()
  #   sql = "SELECT * FROM houses WHERE id = $1"
  #   values = [@house_id]
  #   results = SqlRunner.run( sql,values )
  #   house_hash = results[0]
  #   house = House.new(house_hash)
  #   return house
  # end

end
