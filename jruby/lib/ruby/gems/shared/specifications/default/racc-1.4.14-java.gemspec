# -*- encoding: utf-8 -*-
# stub: racc 1.4.14 java lib

Gem::Specification.new do |s|
  s.name = "racc"
  s.version = "1.4.14"
  s.platform = "java"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Aaron Patterson"]
  s.date = "2015-11-25"
  s.description = "Racc is a LALR(1) parser generator.\n  It is written in Ruby itself, and generates Ruby program.\n\n  NOTE: Ruby 1.8.x comes with Racc runtime module.  You\n  can run your parsers generated by racc 1.4.x out of the\n  box."
  s.email = ["aaron@tenderlovemaking.com"]
  s.executables = ["racc", "racc2y", "y2racc"]
  s.extra_rdoc_files = ["Manifest.txt", "README.ja.rdoc", "README.rdoc", "rdoc/en/NEWS.en.rdoc", "rdoc/en/grammar.en.rdoc", "rdoc/ja/NEWS.ja.rdoc", "rdoc/ja/debug.ja.rdoc", "rdoc/ja/grammar.ja.rdoc", "rdoc/ja/parser.ja.rdoc"]
  s.files = [".gemtest", "COPYING", "ChangeLog", "DEPENDS", "Manifest.txt", "README.ja.rdoc", "README.rdoc", "Rakefile", "TODO", "bin/racc", "bin/racc2y", "bin/y2racc", "ext/racc/MANIFEST", "ext/racc/com/headius/racc/Cparse.java", "ext/racc/cparse.c", "ext/racc/depend", "ext/racc/extconf.rb", "fastcache/extconf.rb", "fastcache/fastcache.c", "lib/racc.rb", "lib/racc/compat.rb", "lib/racc/cparse-jruby.jar", "lib/racc/debugflags.rb", "lib/racc/exception.rb", "lib/racc/grammar.rb", "lib/racc/grammarfileparser.rb", "lib/racc/info.rb", "lib/racc/iset.rb", "lib/racc/logfilegenerator.rb", "lib/racc/parser-text.rb", "lib/racc/parser.rb", "lib/racc/parserfilegenerator.rb", "lib/racc/pre-setup", "lib/racc/sourcetext.rb", "lib/racc/state.rb", "lib/racc/statetransitiontable.rb", "lib/racc/static.rb", "misc/dist.sh", "rdoc/en/NEWS.en.rdoc", "rdoc/en/grammar.en.rdoc", "rdoc/ja/NEWS.ja.rdoc", "rdoc/ja/command.ja.html", "rdoc/ja/debug.ja.rdoc", "rdoc/ja/grammar.ja.rdoc", "rdoc/ja/index.ja.html", "rdoc/ja/parser.ja.rdoc", "rdoc/ja/usage.ja.html", "sample/array.y", "sample/array2.y", "sample/calc-ja.y", "sample/calc.y", "sample/conflict.y", "sample/hash.y", "sample/lalr.y", "sample/lists.y", "sample/syntax.y", "sample/yyerr.y", "setup.rb", "tasks/doc.rb", "tasks/email.rb", "test/assets/chk.y", "test/assets/conf.y", "test/assets/digraph.y", "test/assets/echk.y", "test/assets/err.y", "test/assets/error_recovery.y", "test/assets/expect.y", "test/assets/firstline.y", "test/assets/ichk.y", "test/assets/intp.y", "test/assets/mailp.y", "test/assets/newsyn.y", "test/assets/noend.y", "test/assets/nonass.y", "test/assets/normal.y", "test/assets/norule.y", "test/assets/nullbug1.y", "test/assets/nullbug2.y", "test/assets/opt.y", "test/assets/percent.y", "test/assets/recv.y", "test/assets/rrconf.y", "test/assets/scan.y", "test/assets/syntax.y", "test/assets/unterm.y", "test/assets/useless.y", "test/assets/yyerr.y", "test/bench.y", "test/helper.rb", "test/infini.y", "test/scandata/brace", "test/scandata/gvar", "test/scandata/normal", "test/scandata/percent", "test/scandata/slash", "test/src.intp", "test/start.y", "test/test_chk_y.rb", "test/test_grammar_file_parser.rb", "test/test_racc_command.rb", "test/test_scan_y.rb", "test/testscanner.rb", "web/racc.en.rhtml", "web/racc.ja.rhtml"]
  s.homepage = "http://i.loveruby.net/en/projects/racc/"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.rubygems_version = "2.4.8"
  s.summary = "Racc is a LALR(1) parser generator"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0.4.1"])
      s.add_development_dependency(%q<minitest>, ["~> 4.7"])
      s.add_development_dependency(%q<hoe>, ["~> 3.13"])
    else
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<rake-compiler>, [">= 0.4.1"])
      s.add_dependency(%q<minitest>, ["~> 4.7"])
      s.add_dependency(%q<hoe>, ["~> 3.13"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<rake-compiler>, [">= 0.4.1"])
    s.add_dependency(%q<minitest>, ["~> 4.7"])
    s.add_dependency(%q<hoe>, ["~> 3.13"])
  end
end
