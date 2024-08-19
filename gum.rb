class Gum < Formula
    desc "Git User Manager - Platform-agnostic tool for managing multiple Git identities"
    homepage "https://github.com/permadart/gum"
    url "https://github.com/permadart/gum/archive/refs/tags/v0.0.1+2.tar.gz"
    sha256 "6bc8f5ae5684fb1d65c8e027492bea6bc7f35d582fe5cf84ecbb3b798970c3ee"
    license "MIT"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
      assert_match "Git User Manager", shell_output("#{bin}/gum --help")
    end
  end