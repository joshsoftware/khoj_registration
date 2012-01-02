class ConfirmationsController < Devise::ConfirmationsController

  def show
    user = User.find_by_confirmation_token(params[:confirmation_token])
    user.public_api_key =  SecureRandom.hex(5)
    user.private_api_key = SecureRandom.hex(8)
    user.public_url = 'http://'+ user.public_api_key + '.khoj.com'
    user.private_url ='http://'+ user.private_api_key + '@' + user.public_api_key + '.khoj.com'
    user.save!
    super
  end

end
