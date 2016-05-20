class User < ActiveRecord::Base
	has_secure_password
	email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	has_many :lenders
	has_many :borrowers
	belongs_to :lenders, :class_name => 'User', :foreign_key => 'user_id'
	validates :first_name, :last_name, :email, :password, presence: true
    validates :email, :uniqueness => true, :format => { :with => email_regex }
    validates_uniqueness_of :email, :case_sensitive => false
end
