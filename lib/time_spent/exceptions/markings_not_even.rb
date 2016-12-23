module TimeSpent
	module Exceptions
		class MarkingsNotEven < StandardError
			def initialize(msg="My default message")
		    super msg
		  end
		end
	end
end