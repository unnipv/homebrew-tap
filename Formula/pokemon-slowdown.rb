# typed: false
# frozen_string_literal: true

# Generated from the pokemon-slowdown release artefacts. Normally written by
# GoReleaser during a release; this copy was added by hand so the tap works
# before the release workflow has a tap token.
class PokemonSlowdown < Formula
  desc "A calm, keyboard-first terminal client for Pokemon Showdown"
  homepage "https://github.com/unnipv/pokemon-slowdown"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unnipv/pokemon-slowdown/releases/download/v0.1.2/pokemon-slowdown_0.1.2_darwin_amd64.tar.gz"
      sha256 "738f52b973a17d893fc1e0a3d10c1f00be73af10831a5249a70ed72bcdec3d4e"
      def install
        bin.install "slowdown"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/unnipv/pokemon-slowdown/releases/download/v0.1.2/pokemon-slowdown_0.1.2_darwin_arm64.tar.gz"
      sha256 "ffdeeddbacbf5aea7f92d8ea64cdb31e083465094dca491d72e01f1829fb2686"
      def install
        bin.install "slowdown"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/unnipv/pokemon-slowdown/releases/download/v0.1.2/pokemon-slowdown_0.1.2_linux_amd64.tar.gz"
      sha256 "de2fd9854d14bbc2544c428d6df90582c409df33460dcbfd3975b0fa4b52cc1e"
      def install
        bin.install "slowdown"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unnipv/pokemon-slowdown/releases/download/v0.1.2/pokemon-slowdown_0.1.2_linux_arm64.tar.gz"
      sha256 "e5f889f530f20b8ae9b2d72b1899165833255c9791f2ac23d3143e94c99ec346"
      def install
        bin.install "slowdown"
      end
    end
  end

  test do
    system "#{bin}/slowdown", "--version"
  end
end
