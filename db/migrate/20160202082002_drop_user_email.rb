class DropUserEmail < ActiveRecord::Migration
  def change
  	drop_table :user_emails
  end
end
