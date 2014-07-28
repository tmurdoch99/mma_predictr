json.array!(@ufcs) do |ufc|
  json.extract! ufc, :id, :name, :date, :where
  json.url ufc_url(ufc, format: :json)
end
