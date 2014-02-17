class Room < ActiveRecord::Base

  validates_presence_of :name, :user
  validates_uniqueness_of :name

  belongs_to :user,
    inverse_of: :rooms

  has_many :items,
    inverse_of: :room

end