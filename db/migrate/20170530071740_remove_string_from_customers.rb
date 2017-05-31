class RemoveStringFromCustomers < ActiveRecord::Migration
  def change
        remove_column :customers, :string
  end
end
