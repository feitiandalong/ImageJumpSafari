Pod::Spec.new do |s|
s.name = 'ImageJumpSafari'
s.version = '1.0.0'
s.license = 'MIT'
s.summary = 'it is timestamp change and save file  method in iOS.'
s.homepage = 'https://github.com/feitiandalong/ImageJumpSafari'
s.authors = { 'feitiandalong' => 'cangsangzhinian@qq.com' }
s.source = { :git => "https://github.com/feitiandalong/ImageJumpSafari.git", :tag => "1.0.0"}
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = "UtilMethodList", "*.{h,m}"

end