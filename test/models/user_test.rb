require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "User has email" do
  	user = User.new(email: 'user@example.com')
  	assert_equal "user@example.com", user.email
  end

  
end
