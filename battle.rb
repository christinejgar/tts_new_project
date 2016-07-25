
require_relative 'bear'
require_relative 'ninja'
# we are not entering fighter file because it is already included in Bear file.

class Battle	
		attr_reader :fighter1, :fighter2
		def initialize(fighter1, fighter2)
			@fighter1 = fighter1
			@fighter2 = fighter2
		end
		def fight  #This is a even fight where both are hitting at the same time
			@fighter1.attack(@fighter2)
			@fighter2.attack(@fighter1)
			self.battle_status
		end
		def ninja_jab #another type of attack
			@fighter2.attack(@fighter1)
			self.battle_status
		end
		def bear_scrape #another type of attack
			@fighter1.attack(@fighter2)
			self.battle_status
		end
		def battle_status
			puts "#{@fighter1.name} has #{@fighter1.health} health remaining"
			puts "#{@fighter2.name} has #{@fighter2.health} health remaining"
		end

end

bear = Bear.new('Panda', 100, 30)
ninja = Ninja.new('Jet Li', 100, 20)
battle = Battle.new(bear, ninja) # the battlLi', created between the bear and the ninja via line 2 and 3

yogi_name = battle.fighter1.name #indicating the name for the bear as fighter1 from the battle file and .name is because of attr_reader in fighter file.
chuck_name = battle.fighter2.name

puts "#{yogi_name} by #{chuck_name}. 3...2....1"
until battle.fighter1.health <= 0 || battle.fighter2.health <= 0  #using this loop until one fighter gets to 0 health
	battle.fight #fight from battle file.
	battle.ninja_jab
	battle.bear_scrape
end
