json.array!(@planas) do |plana|
  json.extract! plana, :id, :week, :wkday, :exercise_id
  json.url plana_url(plana, format: :json)
end
