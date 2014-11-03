class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.text :description
      t.boolean :approved, :default => false
      t.date :happened_on
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3

      t.timestamps
    end
  end
end
