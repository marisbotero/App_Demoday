json.array!(@user_courses) do |user_course|
  json.extract! user_course, :id, :course_id, :user_id, :points, :percentage
  json.url user_course_url(user_course, format: :json)
end
