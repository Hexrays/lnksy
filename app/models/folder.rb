class Folder < ActiveRecord::Base
  attr_accessible :description, :name, :user_id
  validates :name, uniqueness: true, presence: true
  has_many :posts
  belongs_to :user
end
