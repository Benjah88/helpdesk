class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :status
      t.string :roomnr
      t.string :telnr
      t.string :pcnr
      t.string :os
      t.string :author

      t.timestamps
    end
  end
end
