class CreateBlocks < ActiveRecord::Migration[8.1]
  def change
    create_table :blocks do |t|
      t.references :article, null: false, foreign_key: true
      t.string :kind, null: false
      t.integer :position, null: false, default: 0
      t.text :boby
      t.text :caption
      t.string :video_url

      t.index %i[article_id position]

      t.timestamps
    end
  end
end
