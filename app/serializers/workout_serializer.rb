class WorkoutSerializer < ActiveModel::Serializer
  attributes :user_id, :id, :cardio_desc, :cardio_date, :cardio_duration,
             :cardio_distance, :cardio_notes
end
