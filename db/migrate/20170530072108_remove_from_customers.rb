class RemoveFromCustomers < ActiveRecord::Migration
  def change
      remove_column :customers, :string
  end
end
