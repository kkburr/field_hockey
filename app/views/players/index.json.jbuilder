json.array!(@players) do |player|
  json.extract! player, :id, :first_name, :last_name, :contact_type, :current_school, :current_grade, :birthdate, :played_other_sport, :other_sport, :allergies
  json.url player_url(player, format: :json)
end
