class Role < ActiveRecord::Base

  has_many :users
  has_and_belongs_to_many :permissions

  #scope returns all models with the beginning character in parameter
  scope :name_starts_with, ->(char) {where("name like?", "#{char}%")}
end
