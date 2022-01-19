# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstrocloudAT001Alpha < Formula
  desc "To build and run Airflow DAGs locally, deploy DAGs to the Astronomer Cloud and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.0.1-alpha"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.2-alpha/cloud-cli_0.0.2-alpha_Darwin_arm64.tar.gz"
      sha256 "2853d7f132d8ec36d0e9500206d55197a4bdfd0bbdafd61d0166b85c85e8a759"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.2-alpha/cloud-cli_0.0.2-alpha_Darwin_x86_64.tar.gz"
      sha256 "4150ace1ae8985dca0a9e00992c2e4bc62e0194ff0e8a0abd10881f2e936f174"

      def install
        bin.install "astrocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.2-alpha/cloud-cli_0.0.2-alpha_Linux_arm64.tar.gz"
      sha256 "c89ba507ebe8551063ac9dedcda9138d0c6abc3cb0627162a8eb19dcfc08ec4d"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.2-alpha/cloud-cli_0.0.2-alpha_Linux_x86_64.tar.gz"
      sha256 "b161b9f2ae72ee76f6dfea6755d6e160f1712f14d132fa06df3e95c3cd655bfa"

      def install
        bin.install "astrocloud"
      end
    end
  end

  test do
    system "#{bin}/astrocloud version"
  end
end
