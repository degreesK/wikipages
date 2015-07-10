class AddEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :address
      t.references :contact

      t.timestamps
    end
  end
end

