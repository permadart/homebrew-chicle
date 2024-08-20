class Chicle < Formula
    desc "Git User Manager - Platform-agnostic tool for managing multiple Git identities"
    homepage "https://github.com/permadart/chicle"
    url "https://github.com/permadart/chicle/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "376a4154661159d2858ee84eb72a9002c57c408e9c5c1b98b19febcb6bf96972"
    license "MIT"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
      assert_match "Git User Manager", shell_output("#{bin}/chicle --help")
    end
  end