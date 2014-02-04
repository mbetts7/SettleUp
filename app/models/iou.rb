# == Schema Information
#
# Table name: ious
#
#  id         :integer          not null, primary key
#  balance    :float
#  name       :string(255)
#  memo       :string(255)
#  status     :string(255)
#  due_date   :date
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  contact_id :integer
#  rec_pay    :string(255)
#

class Iou < ActiveRecord::Base
  belongs_to :user
  belongs_to :contact
end
