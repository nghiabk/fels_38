class CreateLearns < ActiveRecord::Migration
  def change
    create_table :learns do |t|
      t.references :user, index: true
      t.references :word, index: true

      t.timestamps
    end
  end
end
