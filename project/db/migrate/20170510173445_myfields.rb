class Myfields < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
  	 add_column :users, :dob, :datetime
  	add_column :users, :pic, :string

  end
end
