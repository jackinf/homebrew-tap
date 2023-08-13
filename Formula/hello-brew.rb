class HelloBrew < Formula
  include Language::Python::Virtualenv

  desc "Example Python console app to play with Homebrew"
  homepage "https://github.com/jackinf/HellowBrew"
  url "https://github.com/jackinf/HelloBrew2/releases/download/v2.7/hello_brew.tar.gz"
  sha256 "22e5236bd4c2e28bb80f9d8bbb307bf2f4946d08582072263af2aa6f70d7de9d"
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