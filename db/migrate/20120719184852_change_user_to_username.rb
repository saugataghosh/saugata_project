class ChangeUserToUsername < ActiveRecord::Migration
  def up
  rename_column:users,:name,:username
  end

  def down
  remove_column:users,:username
  end
end
