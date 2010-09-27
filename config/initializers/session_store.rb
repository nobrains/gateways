# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gateways_session',
  :secret      => '82c8e2553ccbfc1c3376c3988b675cc2f9e739ca8811bc4d00e5856fbce95e5e9cc354f6b102b9df71f96988038be3eaa832cca59aae4a7aa6812187840953c0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
