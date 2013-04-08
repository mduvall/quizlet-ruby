Gem::Specification.new do |s|
  s.name          = 'quizlet-ruby'
  s.version       = '0.0.1'
  s.date          = '2013-04-07'
  s.summary       = "A Ruby wrapper for the Quizlet 2.0 API"
  s.description   = "A Ruby wrapper for the Quizlet 2.0 API"

  s.authors       = ["Matthew DuVall"]
  s.email         = 'mduvall89@gmail.com'

  s.required_ruby_version = ">= 1.9.0"
  s.add_dependency "faraday_middleware"
  s.add_dependency "json"

  s.files         = `git ls-files`.split("\n")
  s.require_path  = 'lib'
  s.homepage      = 'http://www.mattduvall.com'
end
