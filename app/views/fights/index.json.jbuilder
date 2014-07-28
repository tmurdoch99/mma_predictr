json.array!(@fights) do |fight|
  json.extract! fight, :id, :ufc, :fighter_one_name, :fighter_one_image, :fighter_two_name, :fighter_two_image
  json.url fight_url(fight, format: :json)
end
