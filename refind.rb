class Refind < Formula
  version "0.8.7"
  homepage "http://www.rodsbooks.com/refind/"
  url "https://downloads.sourceforge.net/project/refind/#{version}/refind-bin-#{version}.zip"
  sha1 "d4d1bb27eabf88b6b301b39a0a304363d65403c6"

  def install
    system "./install.sh"
    system "sudo diskutil unmount /Volumes/ESP"
  end

  # gee, turns out homebrew doesn 't have an uninstall hook.
  # def uninstall
  #   mountpoint = "/Volumes/ESP"
  #   device = `diskutil list | grep EFI | awk '{ print $NF }' | head -n1`
  #   print "device = #{device}"
  #   system "mkdir -p #{mountpoint} && mount -t msdos #{device} #{mountpoint}"
  #   rm Dir["#{mountpoint}/EFI/refind"]
  #   system "umount #{mountpoint}"
  # end
end
