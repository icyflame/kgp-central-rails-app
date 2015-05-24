class Advt
  include Mongoid::Document
  include Mongoid::Enum
  field :title, type: String
  field :description, type: String
  field :negotiable, type: Mongoid::Boolean, default: true
  field :category, type: Integer
  field :url, type: String
  enum :category, [:books, :coupons, :electronics, :furniture, 
  	:accessories, :vehicles, :others]
  belongs_to :user

  def self.find_for_mail_id(email)
  	a = User.find_by(email: email.to_s).id
  	t = Advt.find_by(user_id: a)
  	return t
  end
end
