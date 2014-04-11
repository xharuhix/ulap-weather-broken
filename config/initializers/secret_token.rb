# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

UlapWeather::Application.config.secret_key_base = secure_token
# UlapWeather::Application.config.secret_key_base = 'fce75315363fc28ec14db9d0ea7cc49610ee87240b61969c0a27ed5710e2a93f53b6ff31315912b846ea8b422a63aa50712d8c95958cce9c28d157680a7b92b6'

