class RenameColumnInAnswer < ActiveRecord::Migration
  def change
    rename_column :answers, :v_word, :content
  end
end
