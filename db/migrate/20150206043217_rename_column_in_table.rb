class RenameColumnInTable < ActiveRecord::Migration
  def change
    rename_column :words, :e_word, :content
  end
end
