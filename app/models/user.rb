class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :first_name, use: :history

  has_secure_password
  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills, dependent: :destroy
  has_many :reviews

  def self.confirm(params)
      @user = User.find_by({email: params[:email]})
      @user.try(:authenticate, params[:password])
  end

  def is_authorized?
    current_user == @user
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates_uniqueness_of :email
  validates :email, format: {with: /@/}

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url:"/images/No-Photo-Available.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end