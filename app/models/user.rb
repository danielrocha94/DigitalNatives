class User < ActiveRecord::Base
  validates :name, presence:true

  belongs_to :role
  has_and_belongs_to_many :permissions

  accepts_nested_attributes_for :role

  def get_permissions
    # gets list of unique permissions from role and permissions
    (role.permissions.map(&:name) + permissions.map(&:name)).uniq
  end
end
