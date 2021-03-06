MRuby::Gem::Specification.new('mruby-hmac') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Thiago Scalone'
  spec.summary = 'Digest::HMAC::hexdigest and Digest::HMAC::digest'
  spec.version = '1.0.0'

  spec.add_dependency('mruby-sha1')
  spec.add_dependency('mruby-pack')
  spec.add_dependency('mruby-enum-ext')
end
