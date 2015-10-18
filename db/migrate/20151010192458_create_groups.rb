class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :group_id
      t.references :interest_group, index: true

      t.timestamps
    end
  end
end
