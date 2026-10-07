class RenameBobyToBodyInBlocks < ActiveRecord::Migration[8.1]
  def change
    rename_column :blocks, :boby, :body
  end
end
