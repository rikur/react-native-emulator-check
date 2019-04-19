require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNEmulatorCheck"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNEmulatorCheck
                   DESC
  s.homepage     = "https://github.com/wusuopu/react-native-emulator-check"
  s.author       = { "author" => "wusuopu" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/wusuopu/react-native-emulator-check.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end
