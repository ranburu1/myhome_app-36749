class CreateHouseworks < ActiveRecord::Migration[6.0]
  def change
    create_table :houseworks do |t|
      t.string :title,  null: false
      t.text   :manner, null: false
      t.timestamps
    end
  end
end
