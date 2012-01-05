class CreateIcdFirstLevelCodes < ActiveRecord::Migration
  def change
    create_table :icd_first_level_codes do |t|
      t.string :code
      t.string :title
      t.references :icd_block

      t.timestamps
    end
    add_index :icd_first_level_codes, :icd_block_id
  end
end
