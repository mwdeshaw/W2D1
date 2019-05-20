class Employee
  include Enumerable
  attr_reader :employees, :salary

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    @employees = nil
  end

  def bonus(multiplier)
    @salary * multiplier
  end

end
