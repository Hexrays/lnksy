class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :username
  attr_accessor :password
  before_save :encrypt_password

  validates_presence_of :email, :name, :password, :username,  :on => :create
  validates_confirmation_of :password
  validates :password, :length => { :in => 6..20 }
  validates :username, :uniqueness => { :case_sensitive => false }
  validates :email, :uniqueness => { case_sensitive: false }
  validates :name, :username, :length => { :minimum => 2 }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  has_many :posts
  has_many :folders

  def to_param
    username
  end

  def self.authenticate(email, password)
  	user = find_by_email(email)
  	if user && user.password_hash = BCrypt::Engine.hash_secret(password, user.password_salt)
  		user
  	else
  		nil
  	end
  end

  def encrypt_password
  	if password.present?
  		self.password_salt = BCrypt::Engine.generate_salt
  		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  	end
  end

end
