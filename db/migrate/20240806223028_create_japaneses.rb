class CreateJapaneses < ActiveRecord::Migration[7.0]
  def change
    create_table :japaneses do |t|
      t.text :kanji
      t.text :definition
      t.text :romanji

      t.timestamps
    end
  end
end
