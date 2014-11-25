class Category < ActiveRecord::Base

  has_many :categorizations
  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
