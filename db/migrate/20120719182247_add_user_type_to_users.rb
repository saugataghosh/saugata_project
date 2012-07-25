class AddUserTypeToUsers < ActiveRecord::Migration
  def change
  add_column:users,:User_type,:integer
end
end
