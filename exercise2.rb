loop do
    @range_input = false
    @status_input = false
    @status
    @range
    while !@status_input do
      puts "What is your status M = married, S = Single"
      @status=gets.chomp
      if ["M", "m", "married", "S", "s", "single"].include?(@status)
        @status_input = true
      else
        puts "Please choose one of the following options"
        @status_input = false
      end
    end
    
    while !@range do
      puts "What is your anual salary? e.g. 50000"
      @range=gets.chomp
      if @range[/\d+/]!=nil
        @range = @range.to_i
        @range_input = true
      else 
        puts "Please enter a number"
        @range_input = false
      end
    end
  
    case @status
    when "M","m","married"
      if @range.between?(0,18650)
        puts "Your tax-rate is 10%"
        break
      elsif @range.between?(18650,75900)
        puts "Your tax-rate is 15%"
        break
      elsif @range.between?(75900, 1000000000)
        puts "Your tax is weigh too high"
        break
      end
    when "S","s","single"
      if @range.between?(0,18650)
        puts "Your tax-rate is 10%"
        break
      elsif @range.between?(18650,75900)
        puts "Your tax-rate is 15%"
        break
      elsif @range.between?(75900, 1000000000)
        puts "Your tax is weigh too high"
        break
      end
    else
      puts "Not valid input"
    end
  end