class AddPayAndRecFieldsToContacts < ActiveRecord::Migration
  def change
    change_table(:contacts) do |t|
      t.float :receivables
      t.float :payables
    end
  end
end
