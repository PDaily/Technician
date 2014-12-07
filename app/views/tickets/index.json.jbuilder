json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :ticketbox_id, :user_id, :title, :body, :assigned_to, :open
  json.url ticket_url(ticket, format: :json)
end
