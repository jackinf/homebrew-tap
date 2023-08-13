class HelloBrew < Formula
  include Language::Python::Virtualenv

  desc "Example Python console app to play with Homebrew"
  homepage "https://github.com/jackinf/HellowBrew"
  url "https://github.com/jackinf/HelloBrew2/releases/download/2.4/hello-brew.tar.gz"
  sha256 "8547a0de3ad1c2c7bb069711ba873b95a56a159dc838e6f3ee0360dc339c3e03"
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