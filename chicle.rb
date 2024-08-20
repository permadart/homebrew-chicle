class Chicle < Formula
    desc "Git User Manager - Platform-agnostic tool for managing multiple Git identities"
    homepage "https://github.com/permadart/chicle"
    url "https://github.com/permadart/chicle/archive/refs/tags/v0.0.1+2.tar.gz"
    sha256 "4f7c842147e0c4098761ca872e3b18329aebbfdd42623386f781febde9942d62"
    license "MIT"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
      assert_match "Git User Manager", shell_output("#{bin}/chicle --help")
    end
  end