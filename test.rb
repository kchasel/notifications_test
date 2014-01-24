require 'rubygems'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

Bundler.require(:default)

configure do
  enable :logging
end

before do
  logger.datetime_format = "%Y/%m/%d @ %H:%M:%S "
  logger.level = Logger::INFO
end


post '/v1/pushPackages/web.com.howaboutwe.howaboutwe' do
  logger.info "Params are #{params.inspect}"
  "OK"
end
