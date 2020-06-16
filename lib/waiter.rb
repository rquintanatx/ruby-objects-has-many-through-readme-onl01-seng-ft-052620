class Waiter
  attr_accessor :name, :yrs_experience 
  
  @@all = []
  
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
  
  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end 
  
  def best_tipper
    most_tip_meal = meals.max {|a,b| a.tip <=> b.tip}
    most_tip_meal.customer
  end 
  
  def worst_tipped_meal
    meals.min {|a,b| a.tip <=> b.tip}
  end 
  
  def new_meal(customer, total, tip = 0)
    Meal.new(self, customer, total, tip)
  end
  
  def self.all
    @@all 
  end
end