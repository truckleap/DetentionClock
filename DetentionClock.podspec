Pod::Spec.new do |s|
  s.name          = 'DetentionClock'
  s.version       = '0.1.0'
  s.summary       = 'Billable detention time and pay for truck stops, past free time.'
  s.description   = 'A tiny Swift helper for trucking apps: give it check-in and check-out times, free hours, an hourly rate and a billing step, and it returns billable minutes and detention pay.'
  s.homepage      = 'https://truckleap.com/detention-lumper-calculator'
  s.license       = { :type => 'MIT', :file => 'LICENSE' }
  s.author        = { 'TruckLeap' => 'truckleap@gmail.com' }
  s.source        = { :git => 'https://github.com/truckleap/DetentionClock.git', :tag => s.version.to_s }
  s.swift_version = '5.5'
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.source_files  = 'DetentionClock.swift'
end
