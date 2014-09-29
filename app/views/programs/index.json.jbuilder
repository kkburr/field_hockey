json.array!(@programs) do |program|
  json.extract! program, :id, :grades, :description_short, :description_long, :location, :head_coach
  json.url program_url(program, format: :json)
end
