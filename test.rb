require 'rubygems'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

Bundler.require(:default)

post '/v1/pushPackages/web.com.howaboutwe.howaboutwe' do
  "Params are #{params.inspect}"
end
