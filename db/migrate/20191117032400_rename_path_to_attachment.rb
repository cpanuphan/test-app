class RenamePathToAttachment < ActiveRecord::Migration[5.2]
  def change
    rename_column :testcases, :path, :attachment
  end
end
