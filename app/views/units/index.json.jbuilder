json.array!(@units) do |unit|
  json.extract! unit, :id, :description, :name, :course_id, :content, :simulator, :answer
  json.url unit_url(unit, format: :json)
end
