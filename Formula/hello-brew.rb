class HelloBrew < Formula
  include Language::Python::Virtualenv

  desc "Example Python console app to play with Homebrew"
  homepage "https://github.com/jackinf/HellowBrew"
  url "https://github.com/jackinf/HelloBrew/releases/download/1.5/hello-brew.tar.gz"
  sha256 "20f4bab5e35888b16e9b3b400e9e14cca8890c0a2577e1aa2e8dc00316048b29"
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