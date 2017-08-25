class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :password_confirmation, :first_name, :last_name, presence: true
  validates :password, presence: true, on: :create
  validates_presence_of :password, :length=>{:minimum=>6}, :on => :create
  validates_presence_of :password_confirmation, :on => :create

  has_many :posts
  has_many :comments
end
