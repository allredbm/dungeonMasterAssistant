class Monster < ApplicationRecord
	belongs_to :book
	belongs_to :monster_type
	belongs_to :sub_type
end
