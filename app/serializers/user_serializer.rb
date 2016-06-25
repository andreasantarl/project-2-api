#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profile, :workouts
end
