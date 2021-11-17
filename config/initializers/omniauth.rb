Rails.application.config.middleware.use OmniAuth::Builder do
 OmniAuth.config.allowed_request_methods = [:post, :get]
 # provider :google,  "936217471773-52eus5oa5bpnrj800he8ulefv0ej8lq0.apps.googleusercontent.com", "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"
 provider :google,  "936217471773-51tk24rq5m3r2jlqn54kepaijif28a2o.apps.googleusercontent.com", "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" 

end
