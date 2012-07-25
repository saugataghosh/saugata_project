class AddFNameToUsers < ActiveRecord::Migration
  def change
  add_column:users,:f_name,:string
  end
end
