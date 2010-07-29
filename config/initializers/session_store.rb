# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_RPGalot_session',
  :secret      => 'ce4cb38fa64f55420d7dd425fac33b08832b5629dab1a3854d954d84f5103c0f58b664fc05593fae48333bd8996b4204a0a23ba4164f794fd7a7884f477d8cb7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
