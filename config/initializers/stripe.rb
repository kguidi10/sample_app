if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['Spk_test_AqriVAfRZ5Zk0N6yUr1bTVzj'],
    secret_key: ENV['sk_test_wbb84Pbql9eb5TrHs371b3wW']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_AqriVAfRZ5Zk0N6yUr1bTVzj',
    secret_key: 'sk_test_wbb84Pbql9eb5TrHs371b3wW'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]