Pod::Spec.new do |spec|

spec.name           = "SpaceLogger"
spec.ios.deployment_target = "10.0"
spec.summary        = "Simple logger for swift project."
spec.version        = "0.1.2"
spec.license        = { :type => "MIT", :file => "LICENSE.md" }
spec.author         = { "Dmitrii Chikovinskii" => "git@dmitrii.space" }
spec.homepage       = "https://github.com/DmitriiChikovinskii/SpaceLogger"
spec.source         = { :git => "https://github.com/DmitriiChikovinskii/SpaceLogger.git", :tag => "#{spec.version}" }
spec.source_files   = "SpaceLogger/**/*.{swift}"
spec.exclude_files  = "Classes/Exclude"
spec.swift_version  = "5.2"

end