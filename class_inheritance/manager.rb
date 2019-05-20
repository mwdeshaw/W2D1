require_relative "employee.rb"

class Manager < Employee
  include Enumerable
  
  attr_reader :employees
  def initialize(name, title, salary, boss, employees)
    super(name, title, salary, boss)
    @employees = employees
  end

  def bonus(multiplier)
    self.df_each_sal * multiplier
  end

  def df_each_sal
    sum = 0 
    employees.each do |employee|
      if employee.employees.nil?
        sum += employee.salary
      else
        employee.df_each_sal
      end  
    end
    sum
  end

end
