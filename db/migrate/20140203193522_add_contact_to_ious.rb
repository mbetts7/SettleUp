class AddContactToIous < ActiveRecord::Migration
  def change
    add_reference :ious, :contact, index: true
  end
end
