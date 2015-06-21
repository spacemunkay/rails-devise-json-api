class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable #TODO ,:confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :first_name, :last_name, :user_profiles_attributes, :username

  has_many :user_profiles
  accepts_nested_attributes_for :user_profiles, allow_destroy: false

  default_scope order('username ASC')

  validates :first_name, :presence => true
  validates :last_name, :presence => true

  def to_s
    "#{first_name} #{last_name}"
  end

  def email_required?
    false
  end

  def full_name
    to_s
  end
end
