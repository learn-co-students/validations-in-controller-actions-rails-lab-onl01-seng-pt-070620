class Author < ActiveRecord::Base
  validates :name, pressence: true
  validates :email, uniqueness: true
end
