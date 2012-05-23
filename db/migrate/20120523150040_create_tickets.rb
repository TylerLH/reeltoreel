class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.text :movie
      t.text :buyer
      t.integer :quantity
      t.integer :total

      t.timestamps
    end
  end
end
