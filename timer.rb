def clear_screen
    # Check if the TERM environment variable is set before clearing the screen
    if ENV['TERM']
      system('clear') || system('cls')
    end
  end
  
  def countdown_timer(seconds)
    while seconds > 0
      hours, remainder = seconds.divmod(3600)
      mins, secs = remainder.divmod(60)
      timeformat = format('%02d:%02d:%02d', hours, mins, secs)
      
      print "\r#{timeformat}    "  # Add extra spaces to clear any remnants
      sleep(1)
      seconds -= 1
  
      clear_screen
    end
  
    puts "\nTime's up!"
  end
  
  # Set the countdown time in seconds
  countdown_time = 3665  # Change this to the desired countdown time
  
  countdown_timer(countdown_time)
  