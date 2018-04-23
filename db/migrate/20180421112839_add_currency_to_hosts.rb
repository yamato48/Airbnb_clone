class AddCurrencyToHosts < ActiveRecord::Migration[5.0]
  def change
    add_column :hosts, :currency, :integer
  end
end
