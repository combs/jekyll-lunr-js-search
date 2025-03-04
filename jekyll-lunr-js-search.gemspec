lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll_lunr_js_search/version'

Gem::Specification.new do |s|
  s.name                  = 'jekyll-lunr-js-search'
  s.version               = Jekyll::LunrJsSearch::VERSION
  s.licenses              = ['MIT']
  s.summary               = 'Jekyll + lunr.js = static websites with powerful full-text search using JavaScript. Forked from https://github.com/slashdotdash/jekyll-lunr-js-search to add Ruby 3.3.0 compatibility.'
  s.description           = 'Use lunr.js to provide simple full-text search, using JavaScript in your browser, for your Jekyll static website.'
  s.authors               = ['Fillipe Pereira Palhares']
  s.email                 = 'fillipe.bugman.palhares@gmail.com'
  s.files                 = Dir.glob("lib/**/*.rb") + Dir.glob("build/*.min.js")
  s.homepage              = 'https://github.com/fillipeppalhares/jekyll-lunr-js-search'
  s.require_paths         = ['lib']
  s.required_ruby_version = '>= 3.0.0'

  s.add_runtime_dependency 'nokogiri', '~> 1.7'
  s.add_runtime_dependency 'json', '~> 2.0'
  s.add_runtime_dependency 'execjs', '~> 2.7'
  s.add_runtime_dependency 'csv'
  s.add_runtime_dependency 'base64'

  s.add_development_dependency 'rake', '~> 12.0'
  s.add_development_dependency 'uglifier', '~> 3.0'
end
