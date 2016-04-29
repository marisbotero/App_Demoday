class CreateUserCourses < ActiveRecord::Migration
  def change
    create_table :user_courses do |t|
      t.integer :course_id
      t.integer :user_id
      t.integer :points
      t.float :percentage

      t.timestamps null: false
    end
  end
end
