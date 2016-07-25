require_relative 'fighter' #using "require" only of "require_relative" (if its on the same local folder) finding the file fighter

class Bear < Fighter
	def initialize(name, health, power)
		super(name, health, power)
	end
	def attack(enemy)
		puts "RAWR!!"
		enemy.lose_health(self.power, enemy.health)
	end
end


bear = Bear.new("Bear", 100, 12)
tyson = Fighter.new("Mike Tyson", 100, 10) #without this, the bear will not be fighting anything
puts bear.attack(tyson) #this would not have worked unless you bring in line 12 from Fighter.rb
