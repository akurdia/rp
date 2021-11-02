Rails.application.config.middleware.use OmniAuth::Builder do
 OmniAuth.config.allowed_request_methods = [:post, :get]
  provider :google,  "936217471773-52eus5oa5bpnrj800he8ulefv0ej8lq0.apps.googleusercontent.com", "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R"
end
