class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :firstName, :lastName, :email, :password, :password_confirmation, :profile_id, :community_id
  belongs_to :profile
  belongs_to :community
  has_many :statuses
  has_many :messages
  has_many :journals
  
  def nombre_completo
      firstName;
  end

#  validates :email, presence: true  uniqueness: true
#  validates :password, presence: true
#  validates :profile_id, presence: true


end
