class Ticket < ActiveRecord::Base
  belongs_to :user, :inverse_of => :tickets
  belongs_to :ticketbox, :inverse_of => :tickets

  accepts_nested_attributes_for :ticketbox, :allow_destroy => true
end
