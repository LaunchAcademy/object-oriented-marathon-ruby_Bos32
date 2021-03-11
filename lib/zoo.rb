require_relative "cage"
require_relative "employee"
class Zoo
    attr_reader :cages, :employees
  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
      10.times do 
    @cages << Cage.new()
    end
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    if  @season_opening_date <= date && date <= @season_closing_date
      return true
    else
      return false
    end
  end

  def add_animal(new_animal) 
    cage_full = cages.all? do |cage|
      !cage.empty?
    end

    if cage_full
      return "Your zoo is already at capacity!"
    end

    cages.each do |cage|
      if cage.empty? 
        cage.animal = new_animal
      return 
      end
    end
  end

  # def add_animal(new_animal)
  #   cages.each do |cage|
  #     if cage.empty? 
  #       cage.animal = new_animal
  #     return 
  #     end
  #   end
  #   "Your zoo is already at capacity!"
  # end

  def visit
    visit_string = ""
    employees.each do |employee|
      visit_string += "#{employee.greet}\n" 
    end
    cages.each do |cage|
      if !cage.empty? 
      visit_string += "#{cage.animal.speak}\n"
    end
    end
    return visit_string
  end
   

end