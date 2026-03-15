# This file is auto-updated by release-cli.yml after each PyPI publish.
# It lives in github.com/Ninetrix-ai/homebrew-tap as Formula/ninetrix.rb

class Ninetrix < Formula      
  include Language::Python::Virtualenv                                                                                                          

  desc "Build and run AI agents as containers"
  homepage "https://ninetrix.io"
  url "https://files.pythonhosted.org/packages/source/n/ninetrix/ninetrix-0.1.5.tar.gz"
  sha256 "549d62f1a86d9a29408f0c470b6daf303f1f4cbfaddbb36190f9b4c69833582c"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    system "#{libexec}/bin/pip", "install", "--only-binary=:all:", "ninetrix==#{version}"                                                        
    bin.install_symlink "#{libexec}/bin/ninetrix"                                                                                         
    bin.install_symlink "#{libexec}/bin/agentfile" 
  end

  test do
    system bin/"ninetrix", "--version"
  end
end
