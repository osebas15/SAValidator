Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "SAValidator"
s.summary = "Validation Manager"
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
LICENSE
}

# 4 - Replace with your name and e-mail address
s.author = { "Sebastian Aguirre" => "osebas15@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/osebas15"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/osebas15/SAValidator.git",
:tag => "#{s.version}" }

# 7
s.framework = "Foundation"

# 8
s.source_files = "SAValidator/**/*.{swift}"

# 10
s.swift_version = "4.0"

end
