#
# Be sure to run `pod lib lint BXUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'BXUIKit'
    s.version          = '0.0.1'
    s.summary          = 'A short description of BXUIKit.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/xudusheng/BXUIKit'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'xudusheng' => '597132100@qq.com' }
    s.source           = { :git => 'https://github.com/xudusheng/BXUIKit.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '8.0'
    
    
    s.subspec 'AddressPickerView' do |a|
        a.source_files = 'BXUIKit/Classes/AddressPickerView/**/*.{h,m}'
    end
    
    s.subspec 'BXHUD' do |hud|
        hud.source_files = 'BXUIKit/Classes/BXHUD/**/*.{h,m}'    end
    
    s.subspec 'BXMenu' do |menu|
        menu.source_files = 'BXUIKit/Classes/BXMenu/**/*.{h,m}'
    end
    
    s.subspec 'BXPlaceholderTextView' do |textView|
        textView.source_files = 'BXUIKit/Classes/BXPlaceholderTextView/**/*.{h,m}'
    end
    
end
