class User < ApplicationRecord

  # Simple authentication token for mobile apps
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :confirmable and :omniauthable

  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  private


end
