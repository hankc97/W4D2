class Employee
    attr_reader :name, :title, :salary, :boss
    
    def initialize (name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = (self.salary) * multiplier
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
        employees_salary = 0

        @employees.each do |employee|
            if employee.kind_of?(Manager)
                employees_salary += employee.employees.bonus(multiplier)
                employees_salary += self.salary
            else
                employees_salary+=employee.salary
            end
        end 
        bonus = employees_salary * multiplier
    end

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
