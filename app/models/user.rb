#
class User < ActiveRecord::Base
  include Authentication
  has_many :profiles
  has_many :workouts
end
