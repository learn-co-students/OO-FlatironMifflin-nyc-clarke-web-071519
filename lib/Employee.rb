class Employee

    #Employee#name returns a String that is the employee's name
    #Employee#salary returns a Fixnum that is the employee's salary
    
    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    #Employee#manager_name returns a String that is the name of their manager
    def manager_name
        manager.name
    end

    #Employee.all returns an Array of all the employees
    def self.all
        @@all
    end

    #Employee.paid_over takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
    def self.paid_over(target_salary)
        Employee.all.select {|employee| employee.salary > target_salary}
    end

    #Employee.find_by_department takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
    def self.find_by_department(department)
        Employee.all.find {|employee| employee.manager.department == department}
    end

    #Employee#tax_bracket returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
    def tax_bracket
        Employee.all.select {|employee| employee.salary < (self.salary + 1000) && employee.salary > (self.salary - 1000) }
    end

end
