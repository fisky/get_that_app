json.array!(@planbs) do |planb|
  json.extract! planb, :id, :week, :wkday, :exercise_id
  json.url planb_url(planb, format: :json)
end
