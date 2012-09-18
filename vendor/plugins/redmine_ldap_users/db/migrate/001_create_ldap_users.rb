class CreateLdapUsers < ActiveRecord::Migration
  def self.up
    create_table :ldap_users do |t|
      t.column :name, :string
      t.column :givenname, :string
      t.column :telephone, :string
    end
  end

  def self.down
    drop_table :ldap_users
  end
end
