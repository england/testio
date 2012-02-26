class User < ActiveRecord::Base
  has_many :comments

  validates_format_of :nickname, :with => /\A[a-zA-Z]+\z/,
                      :message => "Only letters allowed"
  validates_format_of :password, :with => /\A[a-zA-Z0-9]+\z/,
                      :message => "Only letters and digits allowed"
  validates_length_of :nickname, :password, :in => 2..20
  validates_length_of :email, :in => 5..255
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/,
                      :message => "You must enter valid email"
  validates_uniqueness_of :email, :nickname


  validates_confirmation_of :email, :password

  def self.authenticate(nickname, password)
    User.where("nickname = ? AND password = ?", nickname, password).first
  end

end
