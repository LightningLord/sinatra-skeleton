class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :gender
      t.belongs_to :cohort
      t.timestamps
    end
  end
end
