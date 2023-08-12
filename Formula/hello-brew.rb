class HelloBrew < Formula
  include Language::Python::Virtualenv

  desc "Example Python console app to play with Homebrew"
  homepage "https://github.com/jackinf/HellowBrew"
  url "https://github.com/jackinf/HelloBrew/releases/download/1.1/hello-brew.tar.gz"
  sha256 "358f9e8659569a4b86d1d47baa8dd0c75de1d0f40722c06c60c188ef05b0fb95"
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