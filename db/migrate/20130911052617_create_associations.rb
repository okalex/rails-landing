class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.integer :resource_a_id
      t.integer :resource_b_id
      t.string :type

      t.timestamps
    end
  end
end
