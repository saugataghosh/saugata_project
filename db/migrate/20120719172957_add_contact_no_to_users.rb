class AddContactNoToUsers < ActiveRecord::Migration
  def change
  add_column:users,:Contact_no,:integer
  end
end
