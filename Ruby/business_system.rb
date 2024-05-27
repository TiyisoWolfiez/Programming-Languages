class Employee
    attr_reader :earnings

    def initialize(baseSalary = 20000.00)
        @earnings = 0.0
        @baseSalary = baseSalary
        @baseSalaryPaid = false
    end

    def payEmployee
        if @baseSalaryPaid == false
            @earnings = @earnings + @baseSalary
            @baseSalaryPaid = true
            puts "paid"
        end
    end

    def newMonth
        @baseSalaryPaid = false
    end
end

class Manager < Employee
    def initialize(bonus)
        super()
        @bonus = bonus
    end

    def payEmployee
        super()
        @earnings = @earnings + @bonus
    end
end

class Programmer < Employee
    def initialize(percentage)
        baseSalary = 20000.00 * percentage
        super(baseSalary)
    end
end
