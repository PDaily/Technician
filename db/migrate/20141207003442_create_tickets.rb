class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :ticketbox, index: true
      t.belongs_to :user, index: true
      t.string :title
      t.string :body
      t.integer :assigned_to
      t.boolean :open

      t.timestamps
    end
  end
end
