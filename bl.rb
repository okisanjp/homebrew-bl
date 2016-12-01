require "formula"

class Bl < Formula
  homepage "https://github.com/okisanjp/homebrew-bl"
  url "https://github.com/okisanjp/homebrew-bl/archive/v1.04.tar.gz"
  sha256 "ea5ec4d884414cee389fa4ce10a4d61c9eb05a408a58f2d1e3df9f57321eba8f"
  head "https://github.com/okisanjp/homebrew-bl.git"
  version "1.04"

  def install
    bin.install "bl"
  end
end
