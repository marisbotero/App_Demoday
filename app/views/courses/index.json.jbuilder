json.array!(@courses) do |course|
  json.extract! course, :id, :name, :intensity, :description
  json.url course_url(course, format: :json)
end
