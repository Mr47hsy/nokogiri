# coding: utf-8
# frozen_string_literal: true

begin
  require File.expand_path(File.join(File.dirname(__FILE__), "lib/nokogiri/version/constant"))
rescue LoadError
  puts "WARNING: Could not load Nokogiri::VERSION"
end

Gem::Specification.new do |spec|
  java_p = /java/ === RUBY_PLATFORM

  spec.name = "nokogiri"
  spec.version = defined?(Nokogiri::VERSION) ? Nokogiri::VERSION : "0.0.0"

  spec.summary = "Nokogiri (鋸) makes it easy and painless to work with XML and HTML from Ruby."
  spec.description = <<~EOF
    Nokogiri (鋸) makes it easy and painless to work with XML and HTML from Ruby. It provides a
    sensible, easy-to-understand API for reading, writing, modifying, and querying documents. It is
    fast and standards-compliant by relying on native parsers like libxml2 (C) and xerces (Java).
  EOF

  spec.authors = [
    "Mike Dalessio",
    "Aaron Patterson",
    "Yoko Harada",
    "Akinori MUSHA",
    "John Shahid",
    "Karol Bucek",
    "Lars Kanis",
    "Sergio Arbeo",
    "Timothy Elliott",
    "Nobuyoshi Nakada",
  ]

  spec.email = "nokogiri-talk@googlegroups.com"

  spec.license = "MIT"

  spec.required_ruby_version = ">= 1.9.2"

  spec.homepage = "https://nokogiri.org"
  spec.metadata = {
    "homepage_uri" => "https://nokogiri.org",
    "bug_tracker_uri" => "https://github.com/sparklemotion/nokogiri/issues",
    "documentation_uri" => "https://nokogiri.org/rdoc/index.html",
    "changelog_uri" => "https://nokogiri.org/CHANGELOG.html",
    "source_code_uri" => "https://github.com/sparklemotion/nokogiri",
  }

  spec.files = [
    "CHANGELOG.rdoc",
    "CONTRIBUTING.md",
    "C_CODING_STYLE.rdoc",
    "LICENSE.txt",
    "Manifest.txt",
    "README.md",
    "ROADMAP.md",
    "STANDARD_RESPONSES.md",
    "Y_U_NO_GEMSPEC.md",
    "bin/nokogiri",
    "ext/nokogiri/extconf.rb",
    "ext/nokogiri/html_document.c",
    "ext/nokogiri/html_element_description.c",
    "ext/nokogiri/html_entity_lookup.c",
    "ext/nokogiri/html_sax_parser_context.c",
    "ext/nokogiri/html_sax_push_parser.c",
    "ext/nokogiri/nokogiri.c",
    "ext/nokogiri/xml_attr.c",
    "ext/nokogiri/xml_attribute_decl.c",
    "ext/nokogiri/xml_cdata.c",
    "ext/nokogiri/xml_comment.c",
    "ext/nokogiri/xml_document.c",
    "ext/nokogiri/xml_document_fragment.c",
    "ext/nokogiri/xml_dtd.c",
    "ext/nokogiri/xml_element_content.c",
    "ext/nokogiri/xml_element_decl.c",
    "ext/nokogiri/xml_encoding_handler.c",
    "ext/nokogiri/xml_entity_decl.c",
    "ext/nokogiri/xml_entity_reference.c",
    "ext/nokogiri/xml_io.c",
    "ext/nokogiri/xml_libxml2_hacks.c",
    "ext/nokogiri/xml_namespace.c",
    "ext/nokogiri/xml_node.c",
    "ext/nokogiri/xml_node_set.c",
    "ext/nokogiri/xml_processing_instruction.c",
    "ext/nokogiri/xml_reader.c",
    "ext/nokogiri/xml_relax_ng.c",
    "ext/nokogiri/xml_sax_parser.c",
    "ext/nokogiri/xml_sax_parser_context.c",
    "ext/nokogiri/xml_sax_push_parser.c",
    "ext/nokogiri/xml_schema.c",
    "ext/nokogiri/xml_syntax_error.c",
    "ext/nokogiri/xml_text.c",
    "ext/nokogiri/xml_xpath_context.c",
    "ext/nokogiri/xslt_stylesheet.c",
    "suppressions/README.txt",
  ]

  spec.bindir = "bin"
  spec.executables = spec.files.grep(/^bin/) { |f| File.basename(f) }

  spec.extra_rdoc_files += Dir.glob("ext/nokogiri/*.c")
  spec.extra_rdoc_files += Dir.glob("README.md")
  spec.rdoc_options = ["--main", "README.md"]

  spec.add_runtime_dependency("mini_portile2", "~> 2.1.0") unless java_p # keep version in sync with extconf.rb

  spec.add_development_dependency("hoe", "~> 3.15")
  spec.add_development_dependency("hoe-bundler", "~> 1.2.0")
  spec.add_development_dependency("hoe-debugging", "~> 1.2.1")
  spec.add_development_dependency("hoe-gemspec", "~> 1.0.0")
  spec.add_development_dependency("minitest", "~> 5.8.4")
  spec.add_development_dependency("racc", "~> 1.4.14")
  spec.add_development_dependency("rake", "~> 10.5.0")
  spec.add_development_dependency("rake-compiler", "~> 0.9.2")
  spec.add_development_dependency("rake-compiler-dock", "~> 0.5.1")
  spec.add_development_dependency("rdoc", "~> 4.0")
  spec.add_development_dependency("rexical", "~> 1.0.5")

  spec.extensions << "ext/nokogiri/extconf.rb"
end
