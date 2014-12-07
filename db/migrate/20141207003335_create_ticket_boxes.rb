class CreateTicketBoxes < ActiveRecord::Migration
  def change
    create_table :ticket_boxes do |t|

      t.timestamps
    end
  end
end
