require_relative 'lib/activemerchant_promptpay/version'

Gem::Specification.new do |spec|
  spec.name          = "activemerchant_promptpay"
  spec.version       = ActivemerchantPromptpay::VERSION
  spec.authors       = ["saiqulhaq"]
  spec.email         = ["saiqulhaq@hungryhub.com"]

  spec.summary       = %q{ActiveMerchant extension to support Thailand Promptpay}
  spec.description   = %q{Add Thailand official QR Code payment to your Ruby app easily. Support Omise and GB Primepay}
  spec.homepage      = "https://github.com/hungryhub-team/activemerchant_promptpay"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hungryhub-team/activemerchant_promptpay"
  spec.metadata["changelog_uri"] = "https://github.com/hungryhub-team/activemerchant_promptpay/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
