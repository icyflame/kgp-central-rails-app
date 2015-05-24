class Advt
  include Mongoid::Document
  include Mongoid::Enum
  field :title, type: String
  field :description, type: String
  field :negotiable, type: Mongoid::Boolean, default: true
  field :category, type: Integer
  enum :category, [:books, :coupons, :electronics]
  belongs_to :user
end
