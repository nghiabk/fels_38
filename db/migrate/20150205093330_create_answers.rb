class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :v_word
      t.references :word, index: true

      t.timestamps
    end
  end
end
