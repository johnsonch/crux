class CreatePastes < ActiveRecord::Migration
  def change
    create_table :pastes do |t|
      t.string :title
      t.text :code
      t.string :slug

      t.timestamps null: false
    end
  end
end
