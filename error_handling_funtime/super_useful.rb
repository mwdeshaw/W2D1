# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError  => e
    puts "Please enter integer as a number like '5'"
    return nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise StandardError 
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue StandardError => e 
    puts "Invalid fruit, please give me coffee to try again!"
    user_try = gets.chomp
    if user_try == "coffee"
      retry
    else
    puts "That's not coffee :("
    end
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    if name.length <= 0
      raise "A friend has no name. Please correct that"
    else
      @name = name
    end

    if yrs_known < 5
      raise "We are moving too fast! Best friend status requires 5 or more years"
    else
      @yrs_known = yrs_known
    end

    if fav_pastime.length <= 0
      raise "How could you not know my favorite pastime?"
    else
      @fav_pastime = fav_pastime
    end
    
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


