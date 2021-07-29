module AttendanceHelper
  def calculate_average_of_times(times)
    hours   = times.collect { |time| time.split(':').first.to_i }
    minutes = times.collect { |time| time.split(':').second.to_i }

    average_hours   = hours.sum / hours.size
    average_minutes = (minutes.sum / minutes.size).to_s.rjust(2, '0')

    "#{average_hours}:#{average_minutes}"
  rescue ZeroDivisionError
    'there was an error'
  end

  def validate_check_in_time
    @time = Time.now
    @hour = @time.hour
    @minutes = @time.min
    check_in_hour = 9
    check_in_minute = 15
    if @hour > check_in_hour
      false
    else
      !(@minutes > check_in_minute)
    end
  end
end
