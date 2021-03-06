require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees

    # #initialize
    # should accept as args: name (string), funding (number), and salaries (hash) containing `title` => `salary` pairs
    # should set @name, @funding, and @salaries with their respective args
    # should set @employees to an empty array
    
    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    # #valid_title?
    # should take in a title (string) as an arg
    # when the given title exists in the startup's @salaries
    # should return true
    # when the given title does not exist in the @salaries
    # should return false

    def valid_title?(title)
        @salaries.has_key?(title)
    end

    # #>
    # should accept another startup as an arg
    # when our startup (self) has more funding than the arg
    # should return true
    # when our startup (self) does not have more funding than the arg
    # should return false

    def >(startup)
        @funding > startup.funding
    end

    # #hire
    # should take in a employee_name (string) and title (string)
    # when the title is invalid
    # should raise an error
    # should not add to @employees
    # when the title is valid
    # should create a new Employee with the given args
    # should add the new Employee instance to @employees

    def hire(employee_name, title)
        if valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else
            raise "Title is invalid."
        end
    end

    # #size
    # should return the number of @employees
    
    def size
        @employees.length      
    end

    # #pay_employee
    # should accept an Employee instance as an arg
    # when the startup has enough funding to pay the employee
    # should call Employee#pay with the salary that corresponds with their title
    # should reduce the startup's @funding by the amount payed
    # when the startup does not have enough funding to pay the employee
    # should raise an error
    # should not call Employee#pay
    # should not reduce the startup's @funding

    def pay_employee(employee)
        salary = @salaries[employee.title]
        if @funding >= salary
            employee.pay(salary)
            @funding -= salary
        else
            raise "Startup does not have enough funding."
        end
    end

    # #payday
    # should call #pay_employee for each employee

    def payday
        @employees.each {|employee| pay_employee(employee)}
    end

    # #average_salary
    # should return a number representing the average employee salary
    
    def average_salary
        salary_sum = 0

        @employees.each do
            |employee|
            salary_sum += @salaries[employee.title]
        end
        salary_sum.fdiv(@employees.length)
    end

    # #close
    # should set @employees to an empty array
    # should set @funding to 0
    
    def close
        @employees = []
        @funding = 0
    end

    # #acquire
    # should accept another startup as an arg
    # should add the given startup's funding to our @funding
    # should add the given startup's salaries to our @salaries, without overwriting any of our existing @salaries
    # should add the given startup's employees to our @employees
    # should call Startup#close on the given startup
    
    def acquire(startup)
        @funding += startup.funding
        @salaries.merge!(startup.salaries) {|key, old_value, new_value| old_value}
        @employees += startup.employees
        startup.close
    end
end
