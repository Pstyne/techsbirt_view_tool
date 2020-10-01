require_relative 'lib/techsbirt_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "techsbirt_view_tool"
  spec.version       = TechsbirtViewTool::VERSION
  spec.authors       = ["Andrew Birt"]
  spec.email         = ["abirt1986@gmail.com"]

  spec.summary       = %q{View specific methods for the application I build and use.}
  spec.description   = %q{Generates HTML data for Rails applications to use in the view.}
  spec.homepage      = "https://github.com/Pstyne/techsbirt_view_tool"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
