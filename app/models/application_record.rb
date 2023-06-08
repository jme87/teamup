class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  CATEGORIES = %w[Volleyball Football Tennis]
  LEVEL = %w[Beginner Intermediate Professional]
end
