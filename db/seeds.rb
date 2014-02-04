#http://www.fakenamegenerator.com/gen-male-au-us.php

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

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  phone      :string(255)
#  zip        :integer
#  created_at :datetime
#  updated_at :datetime

users = []
users << User.create(first_name: 'mike', last_name: 'betts', email: 'mbetts7@gmail.com', phone: '913-791-3741', zip: '94133', password: 'password', password_confirmation: 'password')
users << User.create(first_name: 'Finn', last_name: 'Murray', email: 'FinnMurray@rhyta.com', phone: '678-791-3741', zip: '30303', password: 'password', password_confirmation: 'password')
users << User.create(first_name: 'Ashton', last_name: 'Ride', email: 'AshtonRide@jourrapide.com', phone: '704-277-6191', zip: '28208', password: 'password', password_confirmation: 'password')
users << User.create(first_name: 'Zac', last_name: 'Chave', email: 'ZacChave@rhyta.com', phone: '815-746-7215', zip: '60178', password: 'password', password_confirmation: 'password')
users << User.create(first_name: 'Ruby', last_name: 'Spain', email: 'RubySpain@jourrapide.com', phone: '775-857-6588', zip: '89502', password: 'password', password_confirmation: 'password')

contacts = []
contacts << Contact.create(first_name: 'Finn', last_name: 'Murray', email: 'FinnMurray@rhyta.com', phone: '678-791-3741', zip: '30303')
contacts << Contact.create(first_name: 'Ashton', last_name: 'Ride', email: 'AshtonRide@jourrapide.com', phone: '704-277-6191', zip: '28208')
contacts << Contact.create(first_name: 'Zac', last_name: 'Chave', email: 'ZacChave@rhyta.com', phone: '815-746-7215', zip: '60178')
contacts << Contact.create(first_name: 'Ruby', last_name: 'Spain', email: 'RubySpain@jourrapide.com', phone: '775-857-6588', zip: '89502')
contacts << Contact.create(first_name: 'Sienna', last_name: 'Hogarth', email: 'SiennaHogarth@armyspy.com', phone: '904-243-0378', zip: '32202')
contacts << Contact.create(first_name: 'Mia', last_name: 'Horne', email: 'MiaHorne@rhyta.com', phone: '850-378-5494', zip: '32548')
contacts << Contact.create(first_name: 'Abbey', last_name: 'Wilkins', email: 'AbbeyWilkins@armyspy.com', phone: '805-269-3221', zip: '93401')
contacts << Contact.create(first_name: 'Daniel', last_name: 'Cowley', email: 'DanielCowley@jourrapide.com', phone: '309-871-1890', zip: '52803')
contacts << Contact.create(first_name: 'Taj', last_name: 'Manton', email: 'TajManton@armyspy.com', phone: '770-571-9026', zip: '30071')

ious = []
ious << Iou.create(balance: 1300.49, name: 'chump change', memo: 'why you steal my lunch money', status: 'open', due_date: '10/19/2014')
ious << Iou.create(balance: 36619.35, name: 'Bottle Tonx', memo: 'meggings sustainable, polaroid me', status: 'open', due_date: '9/9/2014')
ious << Iou.create(balance: 578.46, name: ' actually. Ho', memo: 'ur-over lo-fi. Shoreditch fanny pack typewrite', status: 'open', due_date: '8/7/2014')
ious << Iou.create(balance: 4402.99, name: 'odard mumblecore church-ke', memo: 'op-up, blog VHS YOLO disrupt. Selvage drinking vinegar ', status: 'open', due_date: '1/9/2014')
ious << Iou.create(balance: 2162.94, name: 'farm-to-table beard', memo: 'squid gluten-free deep v bitters quinoa', status: 'open', due_date: '3/13/2014')
ious << Iou.create(balance: 4222.90, name: 'Sriracha', memo: 'a bird on it pug bicycle rights whatever scenester', status: 'open', due_date: '3/30/2014')
ious << Iou.create(balance: 1859.07, name: 'XOXO', memo: 'squid gluten-free deep v bitters quinoa', status: 'open', due_date: '4/9/2014')
ious << Iou.create(balance: 9872.52, name: 'Bottle Odd Future', memo: ' Godard mumblecore church-key fashion axe hella bitters', status: 'open', due_date: '3/15/2014')
ious << Iou.create(balance: 40942.47, name: 'Vegan gastropub aesthetic,', memo: 'freegan leggings raw denim Echo Park', status: 'open', due_date: '5/24/2014')
ious << Iou.create(balance: 347.73, name: 'Carles gentrify chia', memo: 'PBR&B dreamcatcher vinyl actually cardigan. PBR&B', status: 'open', due_date: '7/31/2014')
ious << Iou.create(balance: 15.67, name: ' freegan next level ', memo: 'Mixtape cliche American Apparel Tonx chambray, asymmetrical', status: 'open', due_date: '5/19/2014')

users[0].contacts << contacts[-1]
users[0].contacts << contacts[-2]
users[1].contacts << contacts[-3]
users[1].contacts << contacts[-4]
users[2].contacts << contacts[-5]
users[2].contacts << contacts[-6]
users[3].contacts << contacts[-7]
users[3].contacts << contacts[-8]
users[3].contacts << contacts[-9]
users[-1].contacts << contacts[-1]
users[-1].contacts << contacts[-2]
users[-1].contacts << contacts[-3]
users[-2].contacts << contacts[-4]
users[-2].contacts << contacts[-5]
users[-2].contacts << contacts[-6]
users[-3].contacts << contacts[-7]
users[-3].contacts << contacts[-8]
users[-4].contacts << contacts[-9]

contacts[0].ious << ious[-1]
contacts[1].ious << ious[-2]
contacts[2].ious << ious[-3]
contacts[3].ious << ious[-4]
contacts[4].ious << ious[-5]
contacts[5].ious << ious[-6]
contacts[6].ious << ious[-7]
contacts[7].ious << ious[-8]
contacts[8].ious << ious[-9]
contacts[8].ious << ious[-10]
contacts[0].ious << ious[-11]
contacts[1].ious << ious[-11]
contacts[2].ious << ious[-10]
contacts[3].ious << ious[-2]
contacts[4].ious << ious[-7]
contacts[5].ious << ious[-9]
contacts[6].ious << ious[-10]
contacts[7].ious << ious[-3]

users[0].ious << ious[-1]
users[0].ious << ious[-2]
users[1].ious << ious[-3]
users[1].ious << ious[-4]
users[2].ious << ious[-5]
users[2].ious << ious[-6]
users[3].ious << ious[-7]
users[3].ious << ious[-8]
users[3].ious << ious[-9]
users[-1].ious << ious[-10]
users[-1].ious << ious[-11]
users[-1].ious << ious[-11]
users[-2].ious << ious[-10]
users[-2].ious << ious[-2]
users[-2].ious << ious[-7]
users[-3].ious << ious[-9]
users[-3].ious << ious[-10]
users[-4].ious << ious[-3]