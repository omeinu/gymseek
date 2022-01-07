class ChangeGymsNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :gyms, :name, false
    change_column_null :gyms, :city, false
    change_column_null :gyms, :address, false
    change_column_null :gyms, :phone_number, false
  end
end
