class CreateInformation < ActiveRecord::Migration[7.0]
  def change
    create_table :information do |t|
      t.string :page
      t.string :name
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
