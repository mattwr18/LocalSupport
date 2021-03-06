class AddFieldsToVolunteerOps < ActiveRecord::Migration[5.1]
  def change
    add_column :volunteer_ops, :role_description, :string
    add_column :volunteer_ops, :skills_needed, :string
    add_column :volunteer_ops, :when_volunteer_needed, :datetime
    add_column :volunteer_ops, :contact_details, :string
  end
end
