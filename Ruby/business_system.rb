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
