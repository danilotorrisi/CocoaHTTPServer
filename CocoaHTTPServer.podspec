Pod::Spec.new do |s|
  s.name           = 'CocoaHTTPServer'
  s.version        = '2.2.1'
  s.license        = 'BSD'
  s.summary        = 'A small, lightweight, embeddable HTTP server for Mac OS X or iOS applications.'
  s.homepage       = 'https://github.com/robbiehanson/CocoaHTTPServer'
  s.authors        = { 'Robbie Hanson' => 'cocoahttpserver@googlegroups.com' }
  s.source         = { :git => 'https://github.com/sgtbash/CocoaHTTPServer.git', :tag => '2.2.1' }
  s.source_files   = '{Core,Extensions}/**/*.{h,m}'


  s.ios.frameworks = 'CFNetwork', 'Security'
  s.osx.frameworks = 'CoreServices', 'Security'

  s.library        = 'xml2'
  s.xcconfig       = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  s.dependency "CocoaAsyncSocket", '~> 7.x'
  s.dependency "CocoaLumberjack", "~> 1.8.1"
end