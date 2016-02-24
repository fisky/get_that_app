json.array!(@plancs) do |planc|
  json.extract! planc, :id, :week, :wkday, :exercise_id
  json.url planc_url(planc, format: :json)
end
