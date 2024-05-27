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

class Team
    def initialize
        @listOfEmployees = []
    end

    def addMember(employee)
        if @listOfEmployees.length >= 2
            raise 'Only A Maximum of 2 Members Allowed'
        else
            @listOfEmployees << employee
        end
    end

    def payTeam
        @listOfEmployees.each do |employee|
            employee.payEmployee
        end
    end

    def newMonth
        @listOfEmployees.each do |employee|
            employee.newMonth
        end
    end

    def printEarnings
        @listOfEmployees.each do |member|
            puts "Employee earnings: R#{member.earnings}"
        end
    end
end

# Testing code
teams = [Team.new, Team.new]

puts "Enter manager's bonus amount:"
bonus = gets.chomp.to_f
manager = Manager.new(bonus)
teams.each { |team| team.addMember(manager) }

teams.each_with_index do |team, index|
    puts "Enter percentage for programmer in team #{index + 1}:"
    percentage = gets.chomp.to_f
    programmer = Programmer.new(percentage)
    team.addMember(programmer)
end

loop do
    puts "Enter 'y' to pay teams for another month of work, 'n' to end payments:"
    choice = gets.chomp
    if choice == 'y' || choice == 'n'
        teams.each do |team|
            team.payTeam
        end

        teams.each do |team|
            team.newMonth
        end
        
        break if choice == 'n'
    else
        puts "Invalid input. Please enter 'y' or 'n'."
    end
end
