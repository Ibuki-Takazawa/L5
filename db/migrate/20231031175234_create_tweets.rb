class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    unless ActiveRecord::Base.connection.table_exists?('tweets')
      create_table :tweets do |t|
        t.string :message
        t.integer :user_id
  
        t.timestamps
      end
    end
  end
end