class CreateTips < ActiveRecord::Migration[5.0]
  def change
    create_table :tips do |t|
      t.string :name
      t.string :location
      t.string :tip

      t.timestamps
    end
  end
end
