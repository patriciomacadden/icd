class CreateIcdBlocks < ActiveRecord::Migration
  def change
    create_table :icd_blocks do |t|
      t.string :first_code
      t.string :last_code
      t.string :title
      t.references :icd_chapter

      t.timestamps
    end
    add_index :icd_blocks, :icd_chapter_id
  end
end
