class Post < ActiveRecord::Base
	default_scope order: 'created_at DESC'
  attr_accessible :description, :folder_id, :link_url, :title, :user_id
  before_validation :add_http
  before_validation :get_title
  validates :link_url, presence: true
  validates :folder_id, presence: true
  belongs_to :folder
  belongs_to :user
	require 'nokogiri'
	require 'open-uri'

  def strip_url
    uri = URI.parse(self.link_url)
    uri.host
  end

  private

  def get_title
  	doc = Nokogiri::HTML(open(self.link_url))
		self.title = doc.css('title').text
  end

  def add_http
    if self.link_url =~ /^https?:\/\//
      self.link_url
    else
      self.link_url = "http://" + self.link_url
    end
  end

end

