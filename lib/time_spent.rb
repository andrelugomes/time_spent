require 'time_spent/version'
require 'time_spent/exceptions/markings_not_even'
require 'time_difference'
require 'ruby-duration'

module TimeSpent
	class Markings
		def calculate(day, markings)
			total = 0
			if markings.size.even?
				validate_format markings
				markings.each_slice(2) do |start_time,end_time|
				  start_datetime = Time.new(day.year, day.month, day.day, start_time.split(':').first, start_time.split(':').last)
					end_datetime = Time.new(day.year, day.month, day.day, end_time.split(':').first, end_time.split(':').last)
					total += TimeDifference.between(start_datetime, end_datetime).in_seconds
				end
	  		Duration.new(total).format('%H:%M')
			else
				raise Exceptions::MarkingsNotEven , 'Markings needs to be even for calculation.'
			end		
		end	

		def to_sec(duration)
			a = duration.split(':')
			Duration.new(hours: a.first, minutes: a.last).total
		end

		private

		def validate_format(markings)
			#raise InvalidFormat unless...
		end	
	end
end
