class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness_points)
    @happiness = happiness_points
    @happiness = 10 if happiness_points > 10
    @happiness = 0 if happiness_points <= 0
  end

  def hygiene=(hygiene_points)
    @hygiene = hygiene_points
    @hygiene = 10 if hygiene_points > 10
    @hygiene = 0 if hygiene_points <= 0
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness +=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(start, topic)
    case topic
    when "politics"
      politics(start)
    when "weather"
      weather(start)
    else
      "blah blah blah blah blah"
    end
  end

  private
  def politics(start)
    self.happiness -= 2
    start.happiness -= 2
    "blah blah partisan blah lobbyist"
  end

  def weather(start)
    self.happiness += 1
    start.happiness += 1
    "blah blah sun blah rain"
  end
end
