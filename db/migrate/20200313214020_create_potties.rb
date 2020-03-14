class CreatePotties < ActiveRecord::Migration[6.0]
  def change
    create_table :potties do |t|
      t.string :excreation_type
      t.datetime :time
      t.references :child, null: false, foreign_key: true

      t.timestamps
    end
  end
end
