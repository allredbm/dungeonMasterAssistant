class SubType < ApplicationRecord
	has_many :monsters
	belongs_to :monster_type
end
