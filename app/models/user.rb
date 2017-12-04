class User < ApplicationRecord
  extend Devise::Models

  attr_accessor :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # presence = field obligatoire
  validates :username, presence: true, uniqueness: {case_senstive: false}, format: {with: /\A[a-zA-Z0-9 _\.]*\z/}

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}, default_url:"/assets/default_image.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/ 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup

    if login = conditions.delete(:login)
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end
end
