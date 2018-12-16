Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_TEST_PUBLISHABLE_KEY'].strip,
  :secret_key => ENV['STRIPE_TEST_SECRET_KEY'].strip
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
