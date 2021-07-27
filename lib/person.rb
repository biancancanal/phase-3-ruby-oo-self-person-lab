# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene 

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(num)
        @happiness = num
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end 
    end 

    def hygiene=(index)
        @hygiene = index
        @hygiene = 10 if @hygiene >10
        @hygiene = 0 if @hygiene < 0
    end 

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end 
    end 

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end 

    def call_friend(friend)
        [friend, self].each do 
            |person| person.happiness += 3
        end 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        objects = [self, person] #why does this need to be defined here? 
        if topic == "politics"
          objects.each { |o| o.happiness -= 2}
          first, second = ["partisan", "lobbyist"]
        elsif topic == "weather"
          objects.each { |o| o.happiness += 1}
          first, second = ["sun", "rain"]
        end
        first ||= "blah"
        second ||= "blah"
        base_string = "blah blah #{first} blah #{second}"
      end

end 