class Chicle < Formula
    desc "Git User Manager - Platform-agnostic tool for managing multiple Git identities"
    homepage "https://github.com/permadart/chicle"
    url "https://github.com/permadart/chicle/archive/refs/tags/v0.0.3.tar.gz"
    sha256 "f9e1241bbb299f25b577597551271f50929fcdb3f7db1b094d9aeed77096dadc"
    license "MIT"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
      assert_match "Git User Manager", shell_output("#{bin}/chicle --help")
    end
  end