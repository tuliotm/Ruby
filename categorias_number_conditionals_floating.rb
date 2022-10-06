class AssemblyLine
    NUMBER_OF_CARS = 221
    
    def initialize(speed)
      @speed = speed
    end
    
    def production_rate_per_hour
      taxa = @speed * NUMBER_OF_CARS
      
      case @speed
      when 1..4
        taxa * 1.0
      when 5..8
        taxa * 0.9
      when 9
        taxa * 0.8
      else 
        taxa * 0.77
      end
    end
  
    def working_items_per_minute
      (production_rate_per_hour/60).to_i
    end
  end