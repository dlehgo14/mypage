class User < ApplicationRecord
  rolify
	include  Authority::UserAbilities
	# current_user.can_update? / current_user.can_delete? 사용 가능
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
				 :confirmable
	
	has_many :qnas, dependent: :destroy
	has_many :qna_comments, dependent: :destroy
end
