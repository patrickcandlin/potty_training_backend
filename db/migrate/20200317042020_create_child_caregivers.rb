class CreateChildCaregivers < ActiveRecord::Migration[6.0]
  def change
    create_table :child_caregivers do |t|
      t.references :caregiver, null: false, foreign_key: true
      t.references :child, null: false, foreign_key: true

      t.timestamps
    end
  end
end
