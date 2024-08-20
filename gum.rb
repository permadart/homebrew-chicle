class Gum < Formula
    desc "Git User Manager - Platform-agnostic tool for managing multiple Git identities"
    homepage "https://github.com/permadart/gum"
    url "https://github.com/permadart/gum/archive/refs/tags/v0.0.1+3.tar.gz"
    sha256 "b5f3e0afd22d1dc03f2365de618a569c8fda1b52175e98a296caac7172a9c3dc"
    license "MIT"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
      assert_match "Git User Manager", shell_output("#{bin}/gum --help")
    end
  end