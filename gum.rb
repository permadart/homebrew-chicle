class Gum < Formula
    desc "Git User Manager - Platform-agnostic tool for managing multiple Git identities"
    homepage "https://github.com/permadart/gum"
    url "https://github.com/permadart/gum/archive/refs/tags/v0.0.1+4.tar.gz"
    sha256 "efaff024bf95b42113506fb52b5174ba1523112ce1ca828fea9f27331519d6ad"
    license "MIT"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
      assert_match "Git User Manager", shell_output("#{bin}/gum --help")
    end
  end