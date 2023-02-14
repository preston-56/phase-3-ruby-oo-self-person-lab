# your code goes here
class Person
    #using macros to define our instance variable 
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25 
        @happiness = 8
        @hygiene = 8 
        
    end

    #set bank_account method 
    def bank_account=(value)
        @bank_account = value
    end

    #get bank_account method 
    def bank_account
        @bank_account
    end

    #set happiness method 
    def happiness=(value)
        # condition to sets the value of the person's happiness points
        @happiness = if value > 10
            10
        elsif value < 0
            0
        else 
            value
        end   
    end

    #get happines method 

    def happiness
        @happiness
    end

    #set hygiene method 
    def hygiene=(value)
        #condition to set the value of the person hygiene points 
        @hygiene = if value > 10
            10
        elsif value < 0
            0
        else 
            value
        end
    end

    #get hygiene method 
    def hygiene
        @hygiene 
    end

    #define and get clean method 
    def clean?
        @hygiene > 7 ? true : false 
    end

    #define get happy method 
    def happy?
        @happiness > 7 ? true : false 
    end
    #define getter method that takes an amount and adds it to the bank account 
    def get_paid(amount)
        @bank_account += amount
         "all about the benjamins"
    end

    #increments the person's hygiene points by four and returns the string 
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    #increments the person's happiness by two points, decreases their hygiene by three points, and returns the Queen lyrics, "♪ another one bites the dust ♫
    def work_out 
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    #accepting another instance of the person class or "friend"
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
         [self, friend].each {|person| person.happiness -= 2}
         'blah blah partisan blah lobbyist'
        elsif topic == "weather"
         [self, friend].each {|person| person.happiness += 1}
         'blah blah sun blah rain' 
        else
         'blah blah blah blah blah' 
        end
    end
end
    

