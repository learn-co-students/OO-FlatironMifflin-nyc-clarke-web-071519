require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

#Managers
michael = Manager.new("Michael Scott", "The Office", 40)
richard = Manager.new("Richard Hendricks", "Pied Piper", 34)
#Employees
dwight = Employee.new("Dwight Schrute", 75000, michael)
jim = Employee.new("Jim Halpert", 70000, michael)
pam = Employee.new("Pam Beesly", 50000, michael)
stanley = Employee.new("Stanley Hudson", 72000, michael)
gilfoyle = Employee.new("Bertram Gilfoyle", 100000, richard)
dinesh = Employee.new("Dinesh Chugtai", 100000, richard)
jared = Employee.new("Jared Dunn", 95000, richard)

binding.pry
puts "done"
