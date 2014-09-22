class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.text :description
      t.boolean :approved, default: false
      t.date :happened_on

      t.timestamps
    end
  end
end
