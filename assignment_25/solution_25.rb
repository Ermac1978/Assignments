# Assignment 25 - in class
# See the following gist. Create classes that make sense for better encapsulating attributes and methods
# https://gist.github.com/brianburridge/3eabb00826af747de2a2

class Employee

   attr_accessor = :employee_name
   attr_accessor = :employee_city

end


class Company

  attr_accessor = :company_name
  attr_accessor = :company_city
  attr_accessor = :employees = []

  # Adds the passed employee to the company employee list
  def hire_employee(employee)

  end

  # Removes the passed employee from the company employee list
  def fire_employee(employee)

  end

end


employee = Employee.new
company = Company.new
employee.employee_name = 'Brian Burridge'
employee.employee_city = 'Clearwater'
# obj.employees = [Array of employees]
company.hire_employee(employee)
company.fire_employee(employee)
