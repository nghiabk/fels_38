class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :e_word
      t.references :category, index: true

      t.timestamps
    end
  end
end
