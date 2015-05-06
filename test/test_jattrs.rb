require 'test_helper'

class JattrsTest < Minitest::Test
  def test_first_name_attr_works
    user = User.new
    user.first_name = 'Ben'
    assert_equal 'Ben', user.first_name
  end
end