class Gum < Formula
    desc "Git User Manager - Platform-agnostic tool for managing multiple Git identities"
    homepage "https://github.com/permadart/gum"
    url "https://github.com/permadart/gum/archive/refs/tags/v0.0.1+5.tar.gz"
    sha256 "ba31ec8957867e1e8dd20833e9ac1451f93da9c57c87a752242a68701c9b6637"
    license "MIT"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
      assert_match "Git User Manager", shell_output("#{bin}/gum --help")
    end
  end