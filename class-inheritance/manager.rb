require_relative "manager"

class Manager < Employee
    def initialize(name)
        super(name)
        @sub_employees = []
    end

end 