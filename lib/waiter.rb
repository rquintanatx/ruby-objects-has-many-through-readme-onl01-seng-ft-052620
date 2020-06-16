class Waiter
  attr_accessor :name, :yrs_experience 
  
  @@all = []
  
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
  
  def meals
    Meals.all.select {|meal| meal.waiter == self}
  end 
  
  def best_tipper
    meals.
  
  def new_meal(customer, total, tip = 0)
    Meal.new(self, customer, total, tip)
  end
  
  def self.all
    @@all 
  end
end