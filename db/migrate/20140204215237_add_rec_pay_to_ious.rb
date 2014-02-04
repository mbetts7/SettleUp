class AddRecPayToIous < ActiveRecord::Migration
  def self.up
    change_table(:ious) do |t|
      t.string :rec_pay
    end
  end
end
