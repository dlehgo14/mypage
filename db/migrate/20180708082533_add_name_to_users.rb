class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
		add_column :users, :nickname, :string
		add_column :users, :phone, :string
		add_column :users, :isMale, :boolean, default: false
  end
end
