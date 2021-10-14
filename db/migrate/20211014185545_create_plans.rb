class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.references :housework, foreign_key: true
      t.datetime   :start_time
      t.timestamps
    end
  end
end
