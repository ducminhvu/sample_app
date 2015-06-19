class AddRememberDigestToUsers < ActiveRecord::Migration
  def up
    add_column :users, :remember_digest, :string
  end

  def down
    remote_column :users, :remember_digest
  end
end
