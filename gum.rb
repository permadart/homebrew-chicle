class Gum < Formula
    desc "Git User Manager - Platform-agnostic tool for managing multiple Git identities"
    homepage "https://github.com/permadart/gum"
    url "https://github.com/permadart/gum/archive/refs/tags/v0.0.1+3.tar.gz"
    sha256 "a65e48422f50bfa046c9d58e2231b2796a017b0cd1c01647e40adbfaf70ce4df"
    license "MIT"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
      assert_match "Git User Manager", shell_output("#{bin}/gum --help")
    end
  end