# == Schema Information
#
# Table name: contacts
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  last_name   :string(255)
#  email       :string(255)
#  phone       :string(255)
#  zip         :integer
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  receivables :integer
#  payables    :integer
#

class Contact < ActiveRecord::Base
  has_many :ious
  belongs_to :user
  accepts_nested_attributes_for :ious

  # after_create :save_user_id_to_contact

  # def save_user_id_to_contact

    # @contact.user_id = @current_user_id

  # end

  # validates_format_of :phone, with: /\d{3}-\d{3}-\d{4}/, on: :create, message: "Phone number must be 10 digits formatted like 555-555-555"
end
