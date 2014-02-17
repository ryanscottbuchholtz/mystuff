class Item < ActiveRecord::Base

  validates_presence_of :name, :user, :room, :box

  belongs_to :user,
    inverse_of: :items

  belongs_to :room,
    inverse_of: :items

  belongs_to :box,
    inverse_of: :items

end