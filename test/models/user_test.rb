require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.create(first_name: "Michel", last_name: "Sardou", email: "michel@yahoo.com")
  end


  test "should have a first name" do
    user = User.new(first_name: "", last_name: "Doe", email: "johndoe@email.com")
    assert_not user.valid?
  end

  test "should have a last name" do
    user = User.new(first_name: "John", last_name: "", email: "johndoe@email.com")
    assert_not user.valid?
  end

  test "email should be unique" do
    user = User.new(first_name: "gigot", last_name: "D'agneau", email: "michel@yahoo.com")
    assert_not user.valid?
  end

end
