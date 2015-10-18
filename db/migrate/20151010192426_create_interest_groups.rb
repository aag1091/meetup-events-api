class CreateInterestGroups < ActiveRecord::Migration
  def change
    create_table :interest_groups do |t|
      t.string :name
      t.string :tag

      t.timestamps
    end
  end
end
