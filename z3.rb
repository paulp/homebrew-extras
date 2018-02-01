class Z3 < Formula
  desc "High-performance theorem prover (built with java bindings enabled)"
  homepage "https://github.com/Z3Prover/z3"
  url "https://github.com/Z3Prover/z3/archive/z3-4.6.0.tar.gz"
  sha256 "511da31d1f985cf0c79b2de05bda4e057371ba519769d1546ff71e1304fe53c9"
  head "https://github.com/Z3Prover/z3.git"

  depends_on :java => "1.7+"

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
