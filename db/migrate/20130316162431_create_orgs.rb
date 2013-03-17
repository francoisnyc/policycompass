class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.string :location
      t.string :contact_name
      t.string :website
      t.string :phone_number

      t.boolean :approved

      t.timestamps
    end
  end
end
