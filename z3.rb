class Z3 < Formula
  desc "High-performance theorem prover (built with java bindings enabled)"
  homepage "https://github.com/Z3Prover/z3"
  url "https://github.com/Z3Prover/z3/releases/download/z3-4.7.1/z3-4.7.1.tar.gz"
  sha256 "d165d68739ee15b4b73c0498225982d5a048e909e5e851b73fa6bcc7cfe228ab"
  head "https://github.com/Z3Prover/z3.git"

  depends_on :java => "1.8"

  def install
    system "python", "scripts/mk_make.py", "--prefix=#{prefix}", "--staticlib", "--java"
    cd "build" do
      system "make"
      system "make", "install"
    end

    pkgshare.install "examples"
  end

  test do
    system ENV.cc, "-I#{include}", "-L#{lib}", "-lz3",
           pkgshare/"examples/c/test_capi.c", "-o", testpath/"test"
    system "./test"
  end
end
