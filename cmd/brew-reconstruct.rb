#!/usr/bin/env ruby
#
# brew-reconstruct: prints formulas along with the options which were given at install time.
#

require "formula"

def reconstruct(f)
  runnable  = ARGV.include? "--script"
  tab       = Tab.for_formula(f)
  opts      = tab.used_options | f.build.used_options
  head_only = f.head && f.devel.nil? && f.stable.nil?
  head_only && opts << "--HEAD"

  printf("%s ", "brew install") if runnable
  if opts.empty?
    puts f if runnable
  else
    printf("%-15s %s\n", f, opts.to_a.sort * " ") unless opts.empty?
  end
end

Formula.installed.each { |f| reconstruct f }
