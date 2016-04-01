class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable #, :confirmable
         # add :confirmable when ready to email
  validate :berkeley_email
  validates_uniqueness_of :username
  
  def berkeley_email
    if email.present? and not email.match(/.*@berkeley.edu$/)
      errors.add :email, "Must use berkeley.edu email"
    end
  end

  def online?
    updated_at > 2.minutes.ago
  end

end
