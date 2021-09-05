=begin "Rakefile" v0.2.0 | 2021/08/31 | by Tristano Ajmone
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
  'sh' commands -- always remember to 'cd $repo_root' before issuing shell
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

$repo_root = pwd

# Define OS-specific name of Null device, for redirection
case RUBY_PLATFORM
when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
  $devnull = "NUL"
else
  $devnull = "/dev/null"
end

# Rake Code Begin Here ...

def create_transcripting_tasks_from_folder(target_task, target_folder, dependencies)
  # -----------------------------------------------------------------------
  # Process the target folder adding to the target task all the storyfiles
  # and transcripts as dependencies, and create all the required file tasks
  # dependencies. Can handle multiple adventures in a same folder, in which
  # case solutions will be associate to each adventure according to its
  # base filename: "<advname>*.sol"
  # -----------------------------------------------------------------------
  alan_sources = FileList["#{target_folder}/*.alan"]
  alan_sources.each do |alan_src|
    storyfile = alan_src.ext('.a3c')
    task target_task => storyfile
    file storyfile => alan_src
    file storyfile => dependencies
    if alan_sources.count() == 1
      # Single adventure: all solutions apply to it.
      solutions = FileList["#{target_folder}/*.a3s"]
    else
      # There are multiple adventures in a same folder!
      # Associate solutions using "<advname>*.sol" pattern.
      basename = storyfile.pathmap("%n")
      solutions = FileList["#{target_folder}/#{basename}*.a3s"]
    end
    solutions.each do |solution|
      transcript = solution.ext('.a3t')
      task target_task => transcript
      file transcript => [solution, storyfile] do |transcript|
        a3t = transcript.name.pathmap("%f")
        a3s = solution.pathmap("%f")
        a3c = storyfile.pathmap("%f")
        a3t_raw = a3c.ext('.a3t')

        hstr = "## Generating Transcript: #{a3t}"
        puts "\n#{hstr}"
        puts '#' * hstr.length

        cd "#{$repo_root}/#{target_folder}"
        sh "arun -r -l #{a3c} < #{a3s} 1>#{$devnull}"
        unless a3t_raw == a3t
          mv(a3t_raw, a3t, force: true)
        end
        cd $repo_root, verbose: false
      end
    end
  end
end

# Rake Code Begin Here ...

## Rules
########

rule ".a3c" => ".alan" do |t|
  # We assume consistent naming convention for libraries folder:
  #   /alan_<en|es|it|sv>/Foundation/
  lib_dir = File::expand_path(t.source.pathmap("%1d") << "/Foundation")
  adv_src = t.source.pathmap("%f")
  adv_dir = t.source.pathmap("%d")

  hstr = "## Compiling #{adv_src}"
  puts "\n#{hstr}"
  puts '#' * hstr.length

  cd "#{$repo_root}/#{adv_dir}"
  sh "alan -include #{lib_dir} #{adv_src} 1>#{$devnull}"
  cd $repo_root, verbose: false
end


## Tasks
########

task :default => %w[lib:all]


## Clean & Clobber
##################
require 'rake/clean'
CLOBBER.include('**/*.a3c')
CLOBBER.include('**/*.a3t')


namespace "lib" do

  desc "Build all libraries"
  task all: %w[lib:en:all lib:es:all]

  ## ENGLISH LIBRARY
  ##################
  namespace "en" do

    desc "English library"
    task :all => :cloak

    LIB_EN_SOURCES = FileList['alan_en/Foundation/*.i']

    ## Cloak of Darkness
    ####################
    desc "Cloak of Darkness"
    task :cloak
    create_transcripting_tasks_from_folder(:cloak,'alan_en/cloak', LIB_EN_SOURCES)

  end # lib:en:

  ## SPANISH LIBRARY
  ##################
  namespace "es" do

    desc "Spanish library"
    task :all => :vampiro

    LIB_ES_SOURCES = FileList['alan_es/Foundation/*.i']

    ## Vampiro
    ##########
    desc "Vampiro"
    task :vampiro
    create_transcripting_tasks_from_folder(:vampiro,'alan_es/vampiro', LIB_ES_SOURCES)

  end # lib:es:
end   # lib:
