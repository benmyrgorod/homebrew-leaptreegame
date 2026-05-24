class Leaptreegame < Formula
  include Language::Python::Virtualenv

  desc "Leap Tree Game is an experimental textual game powered by AI"
  homepage "https://github.com/benmyrgorod/homebrew"
  url "https://github.com/benmyrgorod/leaptreegame/releases/download/v0.4.0/leaptreegame-0.4.0.tar.gz"
  sha256 "cd6d5fa45c35f3942daeb3684a081c49dc780c035b1b6e9f375a9eaa07af9cf1"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    system Formula["python@3.12"].opt_bin/"python3.12", "-m", "pip", "--python=#{venv.root}/bin/python", "install", "--no-cache-dir", "."

    bin.install_symlink (libexec/"bin/leaptreegame")
  end
end
