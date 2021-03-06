require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))


Pod::Spec.new do |s|
  s.name         = "RNUportSigner"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  
  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.source       = { :git => "https://github.com/uport-project/react-native-uport-signer", :tag => "v#{s.version}" }
  
  s.ios.deployment_target = '9.3'
  
  s.source_files  = "ios/**/*.{h,m}"

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/EthCore" "${PODS_ROOT}/EthCore/openssl/include"',
  }
  
  s.dependency 'React'
  s.dependency 'UPTEthereumSigner', '~> 1.1.5'


end

  