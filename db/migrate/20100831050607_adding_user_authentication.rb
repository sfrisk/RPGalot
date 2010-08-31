class AddingUserAuthentication < ActiveRecord::Migration
  def self.up
			add_column :users, :username, :string
			add_column :users, :email, :string
			add_column :users, :crypted_password, :string
			add_column :users, :password_salt, :string
			add_column :users, :persistence_token, :string
  end

  def self.down
			remove_column :users, :username, :string
			remove_column :users, :email, :string
			remove_column :users, :crypted_password, :string
			remove_column :users, :password_salt, :string
			remove_column :users, :persistence_token, :string
  end
end
