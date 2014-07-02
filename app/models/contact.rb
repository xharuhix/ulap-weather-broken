class Contact < MailForm::Base
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true
  attribute :subject

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact ULAP Research",
      :to => "ulap.research@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

# class Message
 
#   include ActiveModel::Validations
#   include ActiveModel::Conversion
#   extend ActiveModel::Naming
 
#   attr_accessor :name, :email, :subject, :body
 
#   validates :name, :email, :subject, :body, :presence => true
#   validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
  
#   def initialize(attributes = {})
#     attributes.each do |name, value|
#       send("#{name}=", value)
#     end
#   end
 
#   def persisted?
#     false
#   end
 
# end