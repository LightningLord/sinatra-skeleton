class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :city, :default => "San Francisco"
      t.timestamps
    end
  end
end
