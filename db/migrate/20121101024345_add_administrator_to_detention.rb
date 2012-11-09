class AddAdministratorToDetention < ActiveRecord::Migration
  def change
    add_column :detentions, :administrator, :string
  end
end
