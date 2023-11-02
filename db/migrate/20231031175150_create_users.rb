class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    unless ActiveRecord::Base.connection.table_exists?('users')
      create_table :users do |t|
        t.string :uid
        t.string :pass
  
        t.timestamps
      end
    end
  end
end