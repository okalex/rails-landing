class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name
      t.integer :resource_id
      t.string :type

      t.timestamps
    end
  end
end
