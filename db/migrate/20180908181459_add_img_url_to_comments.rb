class AddImgUrlToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :img_url, :string
  end
end
