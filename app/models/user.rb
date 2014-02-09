class User < ActiveRecord::Base
  attr_accessible :login, :email, :password, :password_confirmation, :mobile_number
  acts_as_authentic do |c|
    c.login_field = 'email'
  end
  
  # Validations
  validates :login, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :mobile_number, presence: true, numericality: true, uniqueness: true, length: { maximum: 10, minimum: 10  }
  
  def self.find_applicant(caller_number)
    where({mobile_number: caller_number}).first
  end
end
