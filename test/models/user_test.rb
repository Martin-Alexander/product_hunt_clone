require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "instance method 'full_name' returns first and last name" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name
  end
end
