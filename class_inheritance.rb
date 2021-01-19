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
    def initialize(name, title, salary, boss) 
        super(name, title, salary, boss)
        @Employees = []
    end

end


