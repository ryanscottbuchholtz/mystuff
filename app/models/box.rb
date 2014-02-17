class Box < ActiveRecord::Base

  validates_presence_of :user, :name
  validates_uniqueness_of :name

  belongs_to :user,
    inverse_of: :boxes

  has_many :items,
    inverse_of: :box
end