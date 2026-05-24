class Leaptreegame < Formula
  include Language::Python::Virtualenv

  desc "Leap Tree Game is an experimental textual game powered by AI"
  homepage "https://github.com/benmyrgorod/homebrew"
  url "https://github.com/benmyrgorod/leaptreegame/releases/download/v0.3.3/leaptreegame-0.3.3.tar.gz"
  sha256 "183178bfb138ea02b5f2f233324db71c5407f7349695d8e719d7c5efef8a9fb4"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    system Formula["python@3.12"].opt_bin/"python3.12", "-m", "pip", "--python=#{venv.root}/bin/python", "install", "--no-cache-dir", "."

    bin.install_symlink (libexec/"bin/leaptreegame")
  end
end
