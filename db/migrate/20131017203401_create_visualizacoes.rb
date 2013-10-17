class CreateVisualizacoes < ActiveRecord::Migration
  def change
    create_table :visualizacoes do |t|
      t.string :pais
      t.string :regiao
      t.string :cidade
      t.references :link

      t.timestamps
    end
    add_index :visualizacoes, :link_id
  end
end
