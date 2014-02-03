class AddUserToIous < ActiveRecord::Migration
  def change
    add_reference :ious, :user, index: true
  end
end
