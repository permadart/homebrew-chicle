class Chicle < Formula
    desc "Git User Manager - Platform-agnostic tool for managing multiple Git identities"
    homepage "https://github.com/permadart/chicle"
    url "https://github.com/permadart/chicle/archive/refs/tags/v0.0.2.tar.gz"
    sha256 "88e0b3286d881c9329f245094233d0d4b16c00bf025b0284e56b1d66a4fd3751"
    license "MIT"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
      assert_match "Git User Manager", shell_output("#{bin}/chicle --help")
    end
  end