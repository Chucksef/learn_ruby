class Timer
  def initialize()
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(sec)
    @seconds = sec
  end

  def time_string()
    hh=(@seconds/3600).to_s.rjust(2,"0")
    mm=((@seconds/60)%60).to_s.rjust(2,"0")
    puts "minutes: #{mm}"
    ss=(@seconds%60).to_s.rjust(2, "0")
    time_string = "#{hh}:#{mm}:#{ss}"
  end

end