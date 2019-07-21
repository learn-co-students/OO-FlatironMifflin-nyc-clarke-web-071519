class Manager

    attr_reader :name , :department , :age
    @@all = [ ]

    def initialize(name , department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end


    def Employees
        Employees.all.select { |employee| employee.manager == self}
    end

    def self.all 
        @@all 
    end

    def hire_employee(employee_name, salary)
        Employee.new(employee_name, salary, self)
    end

    def self.all_departments
        Manager.all.map { |manager| manager.department }
    end


    def self.average_age
        managers_age = Manager.all.map { |manager| manager.age.to_f}
        managers_age.reduce(0) {|total, sum| total + sum } / manager.age.length
    end












end
