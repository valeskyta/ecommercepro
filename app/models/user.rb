class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :username, presence: true, length: 3..20, uniqueness: true, format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ }
  has_many :products, dependent: :destroy
  has_many :reviews, dependent: :destroy

  enum role: [:admin, :client, :guest]

  before_save :default_values

  def default_values
    self.role ||=1
  end
end




