class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
  before_create :first_user_is_admin

 private
    def first_user_is_admin
      return self.is_admin = true if User.all.empty?
    end
end
