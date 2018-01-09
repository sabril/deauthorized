module ApplicationHelper
  def build_shutdown_url application
    signature = Base64.urlsafe_encode64(current_user.rsa_signature)

    "#{application.host}/shutdown/?token=#{application.access_tokens.first.token}&signature=#{signature}"
  end
end
