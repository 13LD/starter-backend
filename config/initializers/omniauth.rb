Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "824688744345552", "2d3b81dd6105c26a1bbf94677852561f"
end