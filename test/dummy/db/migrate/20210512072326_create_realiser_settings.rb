class CreateRealiserSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :realiser_settings do |t|
      t.string :key
      t.string :value

      t.timestamps
    end
    add_index :realiser_settings, :key
  end
end
