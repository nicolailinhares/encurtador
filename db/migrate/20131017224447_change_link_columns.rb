class ChangeLinkColumns < ActiveRecord::Migration
  def up
  	change_table :links do |t|
  		t.change_column :url, :text
  		t.change_column :publicidade, :text
  end

  def down
  end
end
