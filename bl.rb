require "formula"

class Bl < Formula
  homepage "https://github.com/okisanjp/homebrew-bl"
  url "https://github.com/okisanjp/homebrew-bl/archive/v1.03.tar.gz"
  sha256 "41ec177ba14b11281f577aab3ec004a8966a513bf19ebbf53b2b6addd9b6fc3b"
  head "https://github.com/okisanjp/homebrew-bl.git"
  version "1.03"

  def install
    bin.install "bl"
  end
end
