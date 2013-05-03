class Post < ActiveRecord::Base
	default_scope order: 'created_at DESC'
  attr_accessible :description, :folder_id, :link_url, :title, :user_id
  before_validation :get_title
  validates :link_url, presence: true
  belongs_to :folder
	require 'nokogiri'
	require 'open-uri'


  private

  def get_title
  	doc = Nokogiri::HTML(open(self.link_url))
		self.title = doc.css('title').text
  end
end
