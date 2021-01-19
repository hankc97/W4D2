class Employee
    attr_reader :name, :title, :salary, :boss
    
    def initialize (name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        @bonus = (self.salary) * multiplier
    end
end

class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss) 
        super(name, title, salary, boss)
        @employees = []
    end

    def hire


    end

    def bonus(multiplier)
        employees_salary = 0

        @employees.each {|employee| employees_salary+=employee.salary}
        
        @bonus = employees_salary * multiplier
    end

end


david = Employee.new("David", "TA", 10000, "Darren")
shawna = Employee.new("Shawna", "TA", 12000 ,"Darren")
darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
ned = Manager.new("Ned", "Founder", 1000000, nil)