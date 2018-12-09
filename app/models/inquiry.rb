class Inquiry < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } 
  validates :message, presence: true, length: { maximum: 500 }
  before_save :downcase_email

  def downcase_email
    self.email = email.downcase
  end

  def send_inquiry_email
    InquiryMailer.inquiry_send.deliver_now
  end

  def send_inquiry_to_slack(inquiry)
    notifier = Slack::Notifier.new('https://hooks.slack.com/services/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') 
    notifier.ping("#{inquiry.message}
  
（こちらのメールアドレスへ対応お願いします #{inquiry.email}）")
  end

end
