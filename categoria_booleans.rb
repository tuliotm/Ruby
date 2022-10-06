class Attendee
    def initialize(height)
      @height = height
    end

    def issue_pass!(pass_id)
      @pass_id = pass_id
    end

    def revoke_pass!
      @pass_id = nil
    end
    
    def has_pass?
      if @pass_id = @pass_id
        true 
        else false
      end
    end

    def fits_ride?(ride_minimum_height)
      if ride_minimum_height <= @height
        true 
      else false
      end
    end
    
    def allowed_to_ride?(ride_minimum_height)
      if (ride_minimum_height <= @height && @pass_id != nil)
        true 
      else false
      end
    end
  end