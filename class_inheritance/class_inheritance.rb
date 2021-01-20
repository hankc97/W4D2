class Employee
    attr_reader :name, :title, :salary, :boss
    
    def initialize (name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        self.salary * multiplier
    end
end

class Manager < Employee
    attr_accessor :employees
    def initialize(name, title, salary, boss) 
        super(name, title, salary, boss)
        @employees = []
    end

    def hire(employee)
        self.employees.push(employee)
    end

    def bonus(multiplier)
        self.total_salaries * 

        
    end

    def get_total_salaries 

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
david = Employee.new("David", "TA", 10000, "Darren")
shawna = Employee.new("Shawna", "TA", 12000 ,"Darren")
darren = Manager.new("Darren", "TA Manager", 78000, "Ned")

ned.hire(david)
darren.hire(shawna)
darren.hire(david)
puts "ned bonus"
p ned.bonus(5)
p "darren"
p darren.bonus(4)
p "david"
p david.bonus(3)
