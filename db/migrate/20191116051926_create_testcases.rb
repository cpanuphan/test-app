class CreateTestcases < ActiveRecord::Migration[5.2]
  def change
    create_table :testcases do |t|
      t.string :title
      t.text :description
      t.string :path

      t.timestamps
    end
  end
end
