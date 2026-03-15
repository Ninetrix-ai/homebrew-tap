# This file is auto-updated by release-cli.yml after each PyPI publish.
# It lives in github.com/Ninetrix-ai/homebrew-tap as Formula/ninetrix.rb

class Ninetrix < Formula                                  
  desc "Build and run AI agents as containers"
  homepage "https://ninetrix.io"
  url "https://files.pythonhosted.org/packages/source/n/ninetrix/ninetrix-0.1.4.tar.gz"
  sha256 "b29c282ff1abf4ac2fcad668d2437221ae30516dd99b37fd4296c92a6d4a9044"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  test do
    system bin/"ninetrix", "--version"
  end
end
