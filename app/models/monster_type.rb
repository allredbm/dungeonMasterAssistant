class MonsterType < ApplicationRecord
	has_many :sub_types
	has_many :monsters
end
