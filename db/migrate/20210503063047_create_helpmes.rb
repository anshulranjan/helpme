class CreateHelpmes < ActiveRecord::Migration[6.1]
  def change
    create_table :helpmes do |t|
      t.string :title
      t.string :description
      t.string :name
      t.string :state
      t.string :city
      t.string :priority
      t.integer :contact
      t.string :address
      t.timestamps
    end
  end
end
