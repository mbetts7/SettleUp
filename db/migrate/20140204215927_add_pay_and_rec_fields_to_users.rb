class AddPayAndRecFieldsToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.float :receivables
      t.float :payables
    end
  end
end
