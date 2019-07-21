class Employee
    
    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end


    def manager_name
        manager.name
    end

 
    def self.all
        @@all
    end

    
    def self.paid_over(target_salary)
        Employee.all.select {|employee| employee.salary > target_salary}
    end

    
    def self.find_by_department(department)
        Employee.all.find {|employee| employee.manager.department == department}
    end

    
    def tax_bracket
        Employee.all.select {|employee| employee.salary < (self.salary + 1000) && employee.salary > (self.salary - 1000) }
    end

end
