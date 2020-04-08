class Employee 
    attr_accessor :name, :title, :salary, :boss
    def initialize(name)
        @name = name 
        @title = title 
        @salary = salary
        @boss = boss 
    end

    def bonus(mulitplier)  
        employee_bonus = self.salary * mulitplier
    end
    
end 