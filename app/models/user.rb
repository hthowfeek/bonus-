class User < ActiveRecord::Base
  attr_accessible :admin, :contact_email, :contact_phone, :name
  has_private_messages

  validates :name, :contact_email, :contact_phone, :presence => true
  validates_format_of :contact_email , :with=> /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|infor|qa))$/i, :message => "is not a valid format"
  validates_format_of :contact_phone, :with => /^(\+?\d{11}|\+?\d{3}?[-.]\d{4}[-.]\d{4})$/, :message => "should be 11 digits (country code needed) and delimited with dashes only"



end
