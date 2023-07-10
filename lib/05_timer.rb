def time_string(number)
  time = number / 60
  seconds = number % 60
  hours = time / 60
  minutes = time % 60

  hours < 10 ? hours_string = "0#{hours}" : hours_string = hours
  minutes < 10 ? minutes_string = "0#{minutes}" : minutes_string = minutes
  seconds < 10 ? seconds_string = "0#{seconds}" : seconds_string = seconds

  "#{hours_string}:#{minutes_string}:#{seconds_string}"
end
