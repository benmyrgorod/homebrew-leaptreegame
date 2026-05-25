class Leaptreegame < Formula
  include Language::Python::Virtualenv

  desc "Leap Tree Game is an experimental textual game powered by AI"
  homepage "https://github.com/benmyrgorod/homebrew"
  url "https://github.com/benmyrgorod/leaptreegame/releases/download/v0.6.0/leaptreegame-0.6.0.tar.gz"
  sha256 "ea837bd47dc64c3552db79b3d77343dfc5106964b6c9e763cd4f1a292c5c5544"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    system Formula["python@3.12"].opt_bin/"python3.12", "-m", "pip", "--python=#{venv.root}/bin/python", "install", "--no-cache-dir", "."

    bin.install_symlink (libexec/"bin/leaptreegame")
  end
end
