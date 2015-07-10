class RemovePhoneFromContacts < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
      t.remove :phone
    end
  end
end
