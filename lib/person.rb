require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(index)
    @happiness = [index, 0, 10].sort[1]
  end

  def hygiene=(index)
  @hygiene = [index, 0, 10].sort[1]
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene=(self.hygiene+4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(self.hygiene-3)
    self.happiness=(self.happiness+2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(self.happiness+3)
    friend.happiness=(friend.happiness+3)
    "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      [self, friend].each {|e| e.happiness=(e.happiness-2)}
      return 'blah blah partisan blah lobbyist'
    when "weather"
      [self, friend].each {|e| e.happiness=(e.happiness+1)}
      return 'blah blah sun blah rain'
    end
    'blah blah blah blah blah'
  end

end

# felix = Person.new("Felix")
# penelope = Person.new("Penelope")
#
# binding.pry
