

Week 1 roadmap:
- set up models
- seed data
- basic pages and links
- I owe $ / Due to me $
- sorting date/amnt paid/
- Dropdown from contacts
- emailing
- stripe integration
- charting
- upload to heroku

Future roadmap:
- ability to split ious
- temporary groups to split ious
- autofill from contacts
- file upload for checks / docs / invoices...tie to ious
- make reoccurring

Model relationships: https://docs.google.com/drawings/d/1vexX3-Ju8Irs3aHK_hvXARZZ7xHI5b-0N1aDqOGdSWo/edit?usp=sharing
RESOURCE FOR RELATIONSHIPS: https://github.com/wdi-sf-jan-2014/notes/blob/master/active_record_associations/migrations_and_associations.md
COMMAND LINE: 

rails g model contact first_name last_name email phone zip:integer --no-test-framework
rails g model user first_name last_name email phone zip:integer --no-test-framework
rails g model iou balance:float name memo status due_date:date --no-test-framework

rails g migration AddUserToContacts user:belongs_to --no-test-framework
rails g migration AddUserToIous user:belongs_to --no-test-framework
rails g migration AddContactToIous contact:belongs_to --no-test-framework

class Contact < ActiveRecord::Base
  has_many :ious
  belongs_to :user
end

class Iou < ActiveRecord::Base
  belongs_to :user
  belongs_to :contact
end

class User < ActiveRecord::Base
  has_many :ious
  has_many :contacts
end