class CreateIous < ActiveRecord::Migration
  def change
    create_table :ious do |t|
      t.float :balance
      t.string :name
      t.string :memo
      t.string :status
      t.date :due_date

      t.timestamps
    end
  end
end
