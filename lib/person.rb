# your code goes here
class Person
  attr_reader :name, :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account=(value)
    @bank_account = value
  end

  def happiness=(value)
    @happiness = value.clamp(0, 10)
  end

  def hygiene=(value)
    @hygiene = value.clamp(0, 10)
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    @hygiene +=4 
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness += 2
    @hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness +=3
    friend.happiness +=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friends, topic)
        case topic
        when "politics"
            self.happiness -=2
            friends.happiness -= 2
            "blah blah partisan blah lobbyist"
            when "weather"
                self.happiness +=1
                friends.happiness +=1
                "blah blah sun blah rain"
                else
                "blah blah blah blah blah"
        end
    end

end


person = Person.new("Morris")
stella = Person.new("Stella")
felix = Person.new("Felix")
person1 = Person.new("Person1")
person2 = Person.new("Person2")

puts person.name
puts person.bank_account
puts person.happiness
puts person.hygiene
puts person.clean?
puts person.happy?

puts person.get_paid(100)
puts person.bank_account

puts person.take_bath
puts person.hygiene

puts person.work_out
puts person.hygiene
puts person.happiness

puts stella.call_friend(felix)
puts stella.happiness
puts felix.happiness

puts person1.start_conversation(person2, "politics")
puts person1.happiness
puts person2.happiness

puts person1.start_conversation(person2, "weather")
puts person1.happiness

puts person1.start_conversation(person2, "football")
puts person1.happiness

# person.bank_account = 50
# puts person.bank_account

# person.happiness = 11
# puts person.happiness

# person.happiness = -5
# puts person.happiness

# person.hygiene = 15
# puts person.hygiene

# person.hygiene = -7
# puts person.hygiene

