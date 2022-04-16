json.array!(@events) do |event|
  json.id event.id
  json.start event.date
  json.title event.events_select_id
end