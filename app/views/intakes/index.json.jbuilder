json.array!(@intakes) do |intake|
  json.extract! intake, :id, :course_id, :location_id, :day, :date, :end_date, :start_time, :end_time, :number_of_places, :number_of_students_registered, :active
  json.url intake_url(intake, format: :json)
end
