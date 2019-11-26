require "formula"

class Bl < Formula
  homepage "https://github.com/okisanjp/homebrew-bl"
  url "https://github.com/okisanjp/homebrew-bl/archive/v1.05.tar.gz"
  sha256 "856e19a81b23749178286f79c56de762754bcb52eb065192834a137b8c4f8d71"
  head "https://github.com/okisanjp/homebrew-bl.git"
  version "1.05"

  def install
    bin.install "bl"
  end
end
