class Folder < ActiveRecord::Base
  attr_accessible :description, :name, :user_id
  validates :name, presence: true, :uniqueness => {:scope => :user_id}
  has_many :posts
  belongs_to :user
end
