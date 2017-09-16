class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.column :username, :string, :limit => 32, :null => false
    	t.column :lastname, :string, :limit => 32, :null => false
        t.column :email, :float,  :unique=>true
        t.column :profile_picture, :string
		t.column :user_ip, :float
        t.column :location, :string 
        t.column :created_at, :timestamp
      	t.timestamps
    end
  end
end
