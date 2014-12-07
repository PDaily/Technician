json.array!(@ticket_boxes) do |ticket_box|
  json.extract! ticket_box, :id
  json.url ticket_box_url(ticket_box, format: :json)
end
