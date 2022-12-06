Pod::Spec.new do |s|

    s.name = 'InAppStoryUGC'
    s.version = '1.1.3'
    s.platform = :ios, '11.0'
    s.license  = { :type => 'MIT', :file => 'LICENSE' }
    s.homepage = 'https://github.com/inappstory/ios-ugc-sdk'
    s.author = { "St.Pashik" => "stpashik@gmail.com" }
    s.source = { :git => 'https://github.com/inappstory/ios-ugc-sdk.git', :tag => s.version }
    s.summary = 'Library for showing UGC redactor with StoryView'
    s.description = 'Library for showing UGC redactor with StoryView' \
                    'You can customize every detail. Make Stories of your dream! :)'

    s.vendored_frameworks = "InAppStoryUGC.xcframework"
end
