require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name: "Daniel", status: "available" )
    @permission = Permission.create(name: "permission")
    @role = Role.create(name: "Editor")
  end

  test "name should be present" do
    @user.name = "   "
    assert_not @user.valid?
  end

  test "should return permissions" do
    @role.users << @user
    @user.permissions << @permission
    assert_equal [@permission.name], @user.get_permissions
  end

end
