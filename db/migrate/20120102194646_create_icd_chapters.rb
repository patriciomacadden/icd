class CreateIcdChapters < ActiveRecord::Migration
  def change
    create_table :icd_chapters do |t|
      t.string :code
      t.string :title

      t.timestamps
    end
  end
end
