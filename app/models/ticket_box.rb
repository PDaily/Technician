class TicketBox < ActiveRecord::Base
	belongs_to :user
	has_many :tickets, :dependent => :destroy, :inverse_of => :ticketbox

	accepts_nested_attributes_for :tickets
end
