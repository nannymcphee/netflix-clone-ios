# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

def rxswift_pods
  pod 'RxSwift', '6.5.0'
  pod 'RxCocoa', '6.5.0'
end

def rx_pods
  rxswift_pods
  pod 'RxGesture', '~> 4.0.2'
  pod 'RxSwiftExt'
  pod 'RxDataSources'
  pod 'XCoordinator', '~> 2.0'
end

def networking_pods
  pod 'Kingfisher', '7.2.0'
end

def app_pods
  pod 'Resolver', '~> 1.4.3'
  pod 'R.swift'
  pod 'SnapKit'
  pod 'MSPeekCollectionViewDelegateImplementation'
end

target 'NetflixClone' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for NetflixClone
  rx_pods
  app_pods
  
  target 'NNetworkPlatform' do
    rxswift_pods
    networking_pods
  end

end
