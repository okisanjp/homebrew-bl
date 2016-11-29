require "formula"

class Bl < Formula
  homepage "https://github.com/okisanjp/homebrew-bl"
  url "https://github.com/okisanjp/homebrew-bl/archive/v1.01.tar.gz"
  sha256 "06c45b2bd1c062dcc81e96b2e239f6a3b034bb8bd553f4cb76b9117ce77fb04d"
  head "https://github.com/okisanjp/homebrew-bl.git"
  version "1.01"

  def install
    bin.install "bl"
  end
end
