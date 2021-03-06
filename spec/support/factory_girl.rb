RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  # spec/support/factory_girl.rb
  # additional factory_girl configuration

  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end
end