class AddDefaultStatusCarts < ActiveRecord::Migration
  def change
    change_column :carts, :status, :string, :default => 'unplaced'
  end
end
