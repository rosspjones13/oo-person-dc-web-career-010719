# your code goes here
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
    
    def happiness=(happiness)
        @happiness = check_value(happiness)
    end
    
    def hygiene=(hygiene)
        @hygiene = check_value(hygiene)
    end
    
    def check_value(points)
        if points > 10
            return 10
        elsif points < 0
            return 0
        end
        return points
    end
    
    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(check)
        self.bank_account += check
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end