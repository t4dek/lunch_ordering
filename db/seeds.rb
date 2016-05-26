weekdays = %w(monday tuesday wednsday thursday friday saturday sunday)

weekdays.each do |w|
  Weekday.create(name: w)
end
