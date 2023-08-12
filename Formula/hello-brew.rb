class HelloBrew < Formula
  include Language::Python::Virtualenv

  desc "Example Python console app to play with Homebrew"
  homepage "https://github.com/jackinf/HellowBrew"
  url "https://github.com/jackinf/HelloBrew/releases/download/1.1/hello-brew.tar.gz"
  sha256 "c7c91a7e7ee09e7ea9230fe69694050ffd200096b85172fd1cc79e32da9bc203"
  license "MIT"

  # depends_on "python@3.11"

  def install
    bin.install "hello-brew.py" => "hello-brew"
    chmod 0755, bin/"hello-brew"
  end

  test do
    system "#{bin}/hello-brew"
  end
end