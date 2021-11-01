Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "2046538062170568", "80d8a6ead1d218c66a5858688769a73e"
  provider :google,  "2046538062170568", "80d8a6ead1d218c66a5858688769a73e"
end
