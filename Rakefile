=begin "Rakefile" v0.1.0 | 2021/08/23 | by Tristano Ajmone
================================================================================
This is an initial Rakefile proposal for Alan-i18n.  It's fully working and uses
namespaces to separate tasks according to locale, but it could do with some
further improvements.

* Transcript generation requires that no solution file has the same name of the
  base adventure when there are multiple solutions, because all transcripts are
  first generated as "<basename>.a3t" and then rename to "<solution>.a3t"; so
  the transcript generated from "<basename>.a3s" would be overwritten if more
  transcripts are generated after. This needs to be fixed via a Ruby script.
* Clobbering is global, I haven't found a way to implement namespace clobbering,
  so if you 'Rake clobber' you'll have to 'Rake' in order not to loose tracked
  files. Namespaced clobbering would improve working on specific locales.
* Beware that CDing to a directory is a persistent action affecting all future
  'sh' commands -- always remember to 'cd repo_root' before issuing shell
  commands from Rake, or manipulating task paths (working dir is affected!).
* There's quite a lot of code redundancy which should be optimized via Ruby
  functions (e.g. transcripts tasks DO blocks).
* We should create an ALAN class exposing the compiler and interpreter via
  custom methods, as well as allowing to gain info about the SDK version, and
  allowing to enforce a specific SDK from a repo folder (ignored by Git), and
  ideally also download the required SDK (according to OS) and unpack it in
  the repository ignored folders.
================================================================================
=end

# Define OS-specific name of Null device, for redirection
case RUBY_PLATFORM
when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
  devnull = "NUL"
else
  devnull = "/dev/null"
end

# Rake Code Begin Here ...

repo_root = pwd

## Rules
########

rule ".a3c" => ".alan" do |t|
  # We assume consistent naming convention for libraries folder:
  #   /alan_<en|es|it|sv>/Foundation/
  cd repo_root
  lib_dir = File::expand_path(t.source.pathmap("%1d") << "/Foundation")
  adv_src = t.source.pathmap("%f")
  adv_dir = t.source.pathmap("%d")

  hstr = "## Compiling #{adv_src}"
  puts "\n#{hstr}"
  puts '#' * hstr.length

  cd "#{repo_root}/#{adv_dir}"
  sh "alan -include #{lib_dir} #{adv_src} 1>#{devnull}"
  cd repo_root
end


## Tasks
########

task :default => %w[lib:all]

require 'rake/phony'
require 'rake/clean'
# Delete generated target files.
CLOBBER.include('**/*.a3c')
CLOBBER.include('**/*.a3t')


namespace "lib" do

  desc "Test all libraries."
  task all: %w[lib:en:all lib:es:all]

  ## ENGLISH LIBRARY
  ##################
  namespace "en" do

    LIB_EN_SOURCES = FileList['alan_en/Foundation/*.i']
    LIB_EN_SOURCES.each do |lib_src|
      file 'alan_en/cloak/cloakv3.a3c' => lib_src
      file lib_src => :phony
    end

    desc "Test English library."
    task :all => :cloak

    ## Cloak of Darkness
    ####################
    desc "Cloak of Darkness."
    task :cloak => 'alan_en/cloak/cloakv3.a3c'

    # Cloak of Darkness: Compile
    file 'alan_en/cloak/cloakv3.a3c' => ['alan_en/cloak/cloakv3.alan']

    # Cloak of Darkness: Tests
    CLOAK_EN_A3S = FileList['alan_en/cloak/*.a3s']
    CLOAK_EN_A3T = CLOAK_EN_A3S.ext('.a3t')
    CLOAK_EN_A3T.zip(CLOAK_EN_A3S).each do |transcript, solution|
      task :cloak => transcript
      file solution => 'alan_en/cloak/cloakv3.a3c'
      file transcript => solution do
        adv_dir = transcript.pathmap("%d")
        a3t = transcript.pathmap("%f")
        a3s = solution.pathmap("%f")

        hstr = "## Generating Cloak Transcript: #{a3t}"
        puts "\n#{hstr}"
        puts '#' * hstr.length

        cd "#{repo_root}/#{adv_dir}"
        sh "arun -r -l cloakv3.a3c < #{a3s} 1>#{devnull}"
        unless "cloakv3.a3t" == a3t
          mv("cloakv3.a3t", a3t, force: true)
        end
        cd repo_root
      end
    end

  end # lib:en:

  ## SPANISH LIBRARY
  ##################
  namespace "es" do

    LIB_ES_SOURCES = FileList['alan_es/Foundation/*.i']
    LIB_ES_SOURCES.each do |lib_src|
      file 'alan_es/vampiro/vampiro.a3c' => lib_src
      file lib_src => :phony
    end

    desc "Test Spanish library."
    task :all => :vampiro

    ## Vampiro
    ##########
    desc "Vampiro."
    task :vampiro => 'alan_es/vampiro/vampiro.a3c'

    # Vampiro: Compile
    file 'alan_es/vampiro/vampiro.a3c' => ['alan_es/vampiro/vampiro.alan']

    # Vampiro: Tests
    VAMPIRO_A3S = FileList['alan_es/vampiro/*.a3s']
    VAMPIRO_A3T = VAMPIRO_A3S.ext('.a3t')
    VAMPIRO_A3T.zip(VAMPIRO_A3S).each do |transcript, solution|
      task :vampiro => transcript
      file solution => 'alan_es/vampiro/vampiro.a3c'
      file transcript => solution do
        adv_dir = transcript.pathmap("%d")
        a3t = transcript.pathmap("%f")
        a3s = solution.pathmap("%f")

        hstr = "## Generating Vampiro Transcript: #{a3t}"
        puts "\n#{hstr}"
        puts '#' * hstr.length

        cd "#{repo_root}/#{adv_dir}"
        sh "arun -r -l vampiro.a3c < #{a3s} 1>#{devnull}"
        unless "vampiro.a3t" == a3t
          mv "vampiro.a3t", "#{a3t}", force: true
        end
        cd repo_root
      end
    end

  end # lib:es:
end   # lib:
