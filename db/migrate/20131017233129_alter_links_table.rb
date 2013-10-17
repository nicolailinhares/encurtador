class AlterLinksTable < ActiveRecord::Migration
  def up
  	change_column :links, :url, :text
  	change_column :links, :publicidade, :text
  end

  def down
  end
end
