class Leaptreegame < Formula
  include Language::Python::Virtualenv

  desc "Leap Tree Game is an experimental textual game powered by AI"
  homepage "https://github.com/benmyrgorod/homebrew"
  url "https://github.com/benmyrgorod/leaptreegame/releases/download/v0.5.0/leaptreegame-0.5.0.tar.gz"
  sha256 "ed5cb4b7bfe730232992b081482f0cb7852dcf5992a30320972dd6a4cc88dc50"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    system Formula["python@3.12"].opt_bin/"python3.12", "-m", "pip", "--python=#{venv.root}/bin/python", "install", "--no-cache-dir", "."

    bin.install_symlink (libexec/"bin/leaptreegame")
  end
end
