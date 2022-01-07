class ChangeGymsPhoneNumberString < ActiveRecord::Migration[5.2]
  def change
    change_column :gyms, :phone_number, :string
  end
end
