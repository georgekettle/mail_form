class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: true
  attribute :message, validate: true

  def headers
    { 
      subject: "Contact Form: #{name}",
      to: "george.kettle@icloud.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
