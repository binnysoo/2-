class AddUserEmailToComments < ActiveRecord::Migration[5.2]
  def change
  	add_column :comments, :email, :string
  	add_column :comments, :username, :string
  end
end
