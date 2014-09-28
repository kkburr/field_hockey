json.array!(@families) do |family|
  json.extract! family, :id, :parent_one_name, :parent_two_name, :email_one, :email_two, :region, :high_school
  json.url family_url(family, format: :json)
end
