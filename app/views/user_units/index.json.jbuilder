json.array!(@user_units) do |user_unit|
  json.extract! user_unit, :id, :user_id, :unit_id, :complete, :coment, :losingunit
  json.url user_unit_url(user_unit, format: :json)
end
