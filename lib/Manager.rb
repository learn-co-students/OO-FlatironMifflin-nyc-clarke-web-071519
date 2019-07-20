class Manager

    # Manager#name returns a String that is the manager's name
    # Manager#department returns a String that is the department that the manager oversees
    # Manager#age returns a Fixnum that is the age of the manager
    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    # Manager#employees returns an Array of all the employees that the manager oversees
    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    # Manager.all returns an Array of all the managers
    def self.all
        @@all
    end

    # Manager#hire_employee takes a String argument and a Fixnum argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    # Manager.all_departments returns an Array of all the department names that every manager oversees
    def self.all_departments
        Manager.all.map {|manager| manager.department}
    end

    #Manager.average_age returns a Float that is the average age of all the managers
    def self.average_age
        manager_ages = Manager.all.map {|manager| manager.age.to_f}
        manager_ages.reduce {|total, sum| total + sum} / manager_ages.length
    end

end
