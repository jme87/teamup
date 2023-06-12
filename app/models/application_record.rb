class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  CATEGORIES = ["Volleyball", "Football", "Tennis", "Bouldering", "Yoga", "Paddle Tennis", "Cycling", "Basketball"]
  LEVEL = %w[Beginner Intermediate Professional]
end
