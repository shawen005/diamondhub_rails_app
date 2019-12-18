class User < ApplicationRecord

  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
 # petergate(roles: [:admin, :editor], multiple: false)   
   petergate(roles: [:site_admin], multiple: false)                                          ##
  ############################################################################################ 
 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

 
  # User Avatar Validation validates_integrity_of :avatar validates_processing_of :avatar



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 validates_presence_of :name, message: 'Fullname cannot be blank' 

 validates_presence_of :email, message: 'Email cannot be blank' 

 validates_presence_of :phone, message: 'Phone Number  cannot be blank' 

 
 
 validates :password,confirmation: true, :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{8,}\z/, message: "must be at least 6 characters and include one number and one letter."}
 
 
 has_many :withdrawals, dependent: :destroy

 has_many :investments, dependent: :destroy

 before_save:set_account


  def set_account
    account = "#{accountname} #{accountnumber}#{bankname}"
  end





end
