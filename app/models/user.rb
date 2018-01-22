class User < ApplicationRecord

  # Simple authentication token for mobile apps
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :confirmable and :omniauthable

  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  before_validation :check_subdomain
  after_create :create_tenant

  def check_subdomain
    self.subdomain = Faker::Internet.domain_word unless subdomain.present?
  end

  def create_tenant 
    Apartment::Tenant.create(subdomain) 
  end
  private


end
