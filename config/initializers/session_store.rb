# Be sure to restart your server when you modify this file.

# Rails.application.config.session_store :cookie_store, key: '_mabinogi_trade_session'
Rails.application.config.session_store :redis_session_store, {
  key: '_mabinogi_trade_session',
  serializer: :json,
  redis: {
    expire_after: 60.minutes,
    key_prefix: 'mabitrade:session:',
    url: 'redis://127.0.0.1:6379/2'
  }
}
