require "formula"

class Bl < Formula
  homepage "https://github.com/okisanjp/homebrew-bl"
  url "https://github.com/okisanjp/homebrew-bl/archive/v1.01.tar.gz"
  sha256 "c2b1dac07a014a061e472a5c8bdf5adc21e20d0bd1f2f3a56c33c0aacc6a7f22"
  head "https://github.com/okisanjp/homebrew-bl.git"
  version "1.01"

  def install
    bin.install "bl"
  end
end
