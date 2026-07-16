class Chicle < Formula
    desc "Git User Manager - Platform-agnostic tool for managing multiple Git identities"
    homepage "https://github.com/permadart/chicle"
    url "https://github.com/permadart/chicle/archive/refs/tags/v0.0.4+1.tar.gz"
    sha256 "3970194a06be930c758702b51dc0f2a7bc62ff8e323350bc47634544c1f9045d"
    version "0.0.4"
    license "MIT"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
      assert_match "Git User Manager", shell_output("#{bin}/chicle --help")
    end
  end