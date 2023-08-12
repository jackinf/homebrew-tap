class HelloBrew < Formula
  include Language::Python::Virtualenv

  desc "Example Python console app to play with Homebrew"
  homepage "https://github.com/jackinf/HellowBrew"
  url "https://github.com/jackinf/homebrew-tap/releases/download/0.1/hello-brew.tar.gz"
  sha256 "278191488D87CE96F01300B08CA81163384A11101DEBAFEF9807FCE890BF6A64"
  license "MIT"

  # depends_on "python@3.11"

  def install
    bin.install "hello-brew.py" => "hello-brew"
  end

  test do
    system "#{bin}/hello-brew"
  end
end