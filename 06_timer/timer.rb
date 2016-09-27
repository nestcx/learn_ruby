module TimeTool

    def converter seconds
      hours = seconds/3600
      minutes = seconds/60 % 60
      secdone = seconds%60
      
      if hours < 10
	      hours = 0.to_s + hours.to_s
	  end
	  if minutes < 10
	      minutes = 0.to_s + minutes.to_s 
	  end
	  if secdone < 10
	      secdone = 0.to_s + secdone.to_s
	  end   
      return hours.to_s + ":" + minutes.to_s + ":" + secdone.to_s
    end
end

class Timer
	include TimeTool

	attr_accessor :seconds
	
	def initialize(seconds=0)
		@seconds = seconds
	end
	def time_string
		converter(seconds)
	end
end