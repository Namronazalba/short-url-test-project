class CreateMunicipalities < ActiveRecord::Migration[6.1]
  def change
    create_table :municipalities do |t|
      t.string :code
      t.string :name
      t.string :old_name
      t.boolean :is_capital
      t.timestamps
    end
  end
end
