class AddNotesToPotty < ActiveRecord::Migration[6.0]
  def change
    add_column :potties, :notes, :string
  end
end
