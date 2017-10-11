if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_AqriVAfRZ5Zk0N6yUr1bTVzj',
    secret_key: 'sk_test_wbb84Pbql9eb5TrHs371b3wW'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]