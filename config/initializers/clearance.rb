Clearance.configure do |config|
  config.routes = false
  config.sign_in_guards = [ConfirmedUserGuard]
end
