class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      t.token_authenticatable
      t.integer :document_limit
      t.string  :subscription_type
      t.integer :index_count, :default => 0
      t.string :public_api_key
      t.string :private_api_key
      t.string :public_url
      t.string :private_url

      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    add_index :users, :authentication_token, :unique => true
  end

  def self.down
    drop_table :users
  end
end
