class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.string :location, :default => "NA"
      t.string :contact_name, :default => "NA"
      t.string :website, :default => "NA"
      t.string :phone_number, :default => "NA"

      t.boolean :approved, :default => false

      t.timestamps
    end
  end
end
