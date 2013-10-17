class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :publicidade
      t.references :usuario

      t.timestamps
    end
    add_index :links, :usuario_id
  end
end
