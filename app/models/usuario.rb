class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :credito, :nome, :sobrenome

  validates :nome, presence: true
  validates :sobrenome, presence: true
  validates :credito, numericality: true, if: "!credito.nil?"

  before_create :init_credito

  def init_credito
  	self.credito = 0.5
  end
end
