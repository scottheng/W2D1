require_relative "employee.rb"

class Manager < Employee

  def initialize(name, title, salary, boss = nil, employees)
    @employees = employees
    super(name, title, salary, boss)
  end

  def bonus(multiplier)
    total = 0
    @employees.each do |employee|
      total += employee.salary
    end
    total * multiplier
  end

end


d = Employee.new("David", "TA", 10_000, "Darren")
s = Employee.new("Shawna", "TA", 12_000, "Darren")
da = Manager.new("Darren", "TA Manager", 78_000, "Ned", [d,s])
n = Manager.new("Ned", "Founder", 1_000_000, [d,s,da])

p n.bonus(5)
