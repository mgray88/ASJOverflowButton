Pod::Spec.new do |s|
  s.name          = 'ASJOverflowButton'
  s.version       = '1.6'
  s.platform      = :ios, '7.0'
  s.license       = { :type => 'MIT' }
  s.homepage      = 'https://github.com/mgray88/ASJOverflowButton'
  s.authors       = { 'Sudeep Jaiswal' => 'sudeepjaiswal87@gmail.com', 'Michael Gray' => 'mgray88@gmail.com' }
  s.summary       = 'Android style overflow button for iOS'
  s.source        = { :git => 'https://github.com/mgray88/ASJOverflowButton.git', :tag => s.version }
  s.source_files  = 'ASJOverflowButton/*.{h,m}'
  s.resources     = 'ASJOverflowButton/*.xib'
  s.requires_arc  = true
end
