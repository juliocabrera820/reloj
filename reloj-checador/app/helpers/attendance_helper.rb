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
end
