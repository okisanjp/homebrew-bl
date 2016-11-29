require "formula"

class Bl < Formula
  homepage "https://github.com/okisanjp/homebrew-bl"
  url "https://github.com/okisanjp/homebrew-bl/archive/v1.02.tar.gz"
  sha256 "445042d6e15570152dadea6d8a057262bd476888c39f6878c50d8748f2bc2e7e"
  head "https://github.com/okisanjp/homebrew-bl.git"
  version "1.02"

  def install
    bin.install "bl"
  end
end
