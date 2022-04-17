event_params = ['', '仕事・学校', '遊び', 'デート', 'その他']

json.array!(@events) do |event|
  json.id event.id
  json.start event.date
  json.title event_params[event.events_select_id]
  # json.image event.image.filename
end