class Fighter
	attr_reader :name #attr_reader is so that it doesn't change. you can only read it.
	attr_accessor :health, :power

	def initialize(name, health, power)
		@name = name
		@health = health
		@power = power
	end
	def attack(enemy) #when we attack enemy
		enemy.lose_health(self.power, enemy.health)

	end
	def lose_health(enemy_power, health)
		self.health -= enemy_power #self referes to the enemies health and the -= indicated that it loses as much as the enemies power.
	end

end

ali = Fighter.new("Muhammad Ali", 100, 20) 
tyson = Fighter.new("Mike Tyson", 100, 10) #enemy
puts  "#{ali.name} takes a hit from Tyson's punch at #{tyson.power} power and is now at #{tyson.attack(ali)} health"
puts ali.inspect
