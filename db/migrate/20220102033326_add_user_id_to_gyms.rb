class AddUserIdToGyms < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM gyms;'
    add_reference :gyms, :user, null: false, index: true
  end

  def down
    remove_reference :gyms, :user, index: true
  end
end
