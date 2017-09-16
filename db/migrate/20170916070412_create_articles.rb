class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
    t.column :title, :string, :limit => 32, :null => false
    t.column :content, :string, :limit => 32, :null => false
    t.column :picture, :string
    t.column :location, :string
    t.timestamps
    end
  end
end
