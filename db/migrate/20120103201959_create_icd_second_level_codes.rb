class CreateIcdSecondLevelCodes < ActiveRecord::Migration
  def change
    create_table :icd_second_level_codes do |t|
      t.string :code
      t.string :title
      t.references :icd_first_level_code

      t.timestamps
    end
    add_index :icd_second_level_codes, :icd_first_level_code_id
  end
end
