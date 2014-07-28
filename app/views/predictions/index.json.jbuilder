json.array!(@predictions) do |prediction|
  json.extract! prediction, :id, :fight_id, :ufc, :fighter, :how, :when
  json.url prediction_url(prediction, format: :json)
end
