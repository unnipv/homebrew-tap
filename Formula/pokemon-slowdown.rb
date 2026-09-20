# typed: false
# frozen_string_literal: true

# Written by GoReleaser during a release. Do not edit by hand.
class PokemonSlowdown < Formula
  desc "A calm, keyboard-first terminal client for Pokemon Showdown"
  homepage "https://github.com/unnipv/pokemon-slowdown"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unnipv/pokemon-slowdown/releases/download/v0.2.0/pokemon-slowdown_0.2.0_darwin_amd64.tar.gz"
      sha256 "e372f30815c3f4867fe7979401dbcc21fe2fc01adf11120405231e72496e932f"
      def install
        bin.install "slowdown"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/unnipv/pokemon-slowdown/releases/download/v0.2.0/pokemon-slowdown_0.2.0_darwin_arm64.tar.gz"
      sha256 "a321f7c95bdafc1364649a7706b86708a9d33f860dc464299962acbde0a19f3b"
      def install
        bin.install "slowdown"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unnipv/pokemon-slowdown/releases/download/v0.2.0/pokemon-slowdown_0.2.0_linux_amd64.tar.gz"
      sha256 "9b4e23c37df3dd06d630a1df43c18653a661b5d08dbe18f2ea46abd39529ddd6"
      def install
        bin.install "slowdown"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unnipv/pokemon-slowdown/releases/download/v0.2.0/pokemon-slowdown_0.2.0_linux_arm64.tar.gz"
      sha256 "21066646628d1fd2eaa39bcee3d3a1985d9fec334c315edb1cc67b5caf79837b"
      def install
        bin.install "slowdown"
      end
    end
  end

  test do
    system "#{bin}/slowdown", "--version"
  end
end
