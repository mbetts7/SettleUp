# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  phone      :string(255)
#  zip        :integer
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Contact < ActiveRecord::Base
  has_many :ious
  belongs_to :user
end
