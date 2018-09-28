json.extract! monster, :id, :name, :book_id, :page, :monster_type_id, :sub_type_id, :challenge, :hit_points, :armor_class, :description, :created_at, :updated_at
json.url monster_url(monster, format: :json)
