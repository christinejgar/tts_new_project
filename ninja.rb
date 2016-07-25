require_relative 'bear'

class Ninja < Fighter
	def initialize (name, health, power)
		super(name, health, power)
	end
	def attack(enemy)
		puts "...silence"
		enemy.lose_health(self.power, enemy.health)
	end
end

# ninja = Ninja.new("Ninja", 100, 20)
# bear = Bear.new("Bear",100, 12)
# puts battle.