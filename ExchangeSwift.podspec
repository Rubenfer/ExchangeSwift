Pod::Spec.new do |s|
s.name             = 'ExchangeSwift'
s.version          = '0.1.0'
s.summary          = 'Get updated exchange rate of 32 currencies in you Swift app.'

s.description      = <<-DESC
If you want to use updated exchange rate in your Swift app, you need ExchangeSwift. ExchangeSwift update rates daily by European Central Bank. You also can see historical exchange rates since 1999.
DESC

s.homepage         = 'https://github.com/Rubenfer/ExchangeSwift'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Ruben Fernandez' => 'ruben.fdez@icloud.com' }
s.source           = { :git => 'https://github.com/Rubenfer/ExchangeSwift.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/RubenApps'

s.ios.deployment_target = '9.0'
s.source_files = 'ExchangeSwift/ExchangeSwift.swift'
s.swift_version = '4.0'

end
