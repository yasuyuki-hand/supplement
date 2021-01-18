class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :nickname, :string
    add_column :users, :weight, :string
    add_column :users, :height, :string
    add_column :users, :gender, :string
    add_column :users, :comment, :string
    add_column :users, :picture, :string
  end
end
