class AddOnPottyToPotty < ActiveRecord::Migration[6.0]
  def change
    add_column :potties, :on_potty, :boolean
  end
end
