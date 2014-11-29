class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Setup accessible or protect attributes for your model
   def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
