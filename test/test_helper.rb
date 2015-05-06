require 'minitest/autorun'
require 'minitest/pride'
require 'jattrs'

class User
  include Jattrs

  attr_accessor :data

  jattr_accessor :data, :first_name

  def initialize
    self.data = {}
  end
end