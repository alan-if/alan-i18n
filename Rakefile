=begin "Rakefile" v0.5.3 | 2022/01/13 | by Tristano Ajmone
================================================================================
This is an initial Rakefile proposal for Alan-i18n.  It's fully working and uses
namespaces to separate tasks according to locale, but it could do with some
further improvements.

* Clobbering is global, I haven't found a way to implement namespace clobbering,
  so if you 'Rake clobber' you'll have to 'Rake' in order not to loose tracked
  files. Namespaced clobbering would improve working on specific locales.
* Beware that CDing to a directory is a persistent action affecting all future
  'sh' commands -- always remember to 'cd $repo_root' before issuing shell
  commands from Rake, or manipulating task paths (working dir is affected!).
* We should create an ALAN class exposing the compiler and interpreter via
  custom methods, as well as allowing to gain info about the SDK version, and
  allowing to enforce a specific SDK from a repo folder (ignored by Git), and
  ideally also download the required SDK (according to OS) and unpack it in
  the repository ignored folders.
================================================================================
=end


# Custom helpers shared among ALAN repos ...

require './_assets/rake/globals.rb'
require './_assets/rake/alan.rb'
require './_assets/rake/asciidoc.rb'

# ==============================================================================
# --------------------{  P R O J E C T   S E T T I N G S  }---------------------
# ==============================================================================

# Relative path to libraries for ALAN '-include' option:
$alan_include = "../Foundation"

$rouge_dir = "#{$repo_root}/_assets/rouge"
require "#{$rouge_dir}/custom-rouge-adapter.rb"

ADOC_OPTS = <<~HEREDOC
  --failure-level WARN \
  --verbose \
  --timings \
  --safe-mode unsafe \
  --require #{$rouge_dir}/custom-rouge-adapter.rb \
  -a source-highlighter=rouge \
  -a rouge-style=thankful_eyes \
  -a docinfodir=#{$rouge_dir} \
  -a docinfo@=shared-head \
  -a data-uri
HEREDOC

# ==============================================================================
# -------------------------------{  T A S K S  }--------------------------------
# ==============================================================================

task :default => ['lib:all', :devdocs]


## Clean & Clobber
##################
require 'rake/clean'
CLOBBER.include('**/*.a3c')
CLOBBER.include('**/*.a3t')
CLOBBER.include('**/*.html').exclude('**/docinfo.html')


namespace "lib" do

  desc "Build all libraries (lib:*)"
  task all: %w[lib:en:all lib:es:all lib:it:all]

  ## ENGLISH LIBRARY
  ##################
  namespace "en" do

    desc "English library"
    task :all => [:cloak, :tests, :docs]

    LIB_EN_SOURCES = FileList['alan_en/Foundation/*.i']

    ## Cloak of Darkness
    ####################
    desc "Cloak of Darkness"
    task :cloak
    CreateTranscriptingTasksFromFolder(:cloak,'alan_en/cloak', LIB_EN_SOURCES)

    ## EN Test Suite
    ################
    desc "English test suite"
    task :tests
    CreateTranscriptingTasksFromFolder(:tests,'alan_en/tests', LIB_EN_SOURCES)

    ## EN Documentation
    ###################
    desc "English documentation"
    task :docs
    EN_ADOC_DEPS = LIB_EN_SOURCES + FileList['alan_en/docs/*.adoc']
    CreateAsciiDocHTMLTasksFromFolder(:docs,'alan_en/docs', EN_ADOC_DEPS, ADOC_OPTS)
  end # lib:en:

  ## SPANISH LIBRARY
  ##################
  namespace "es" do

    desc "Spanish library"
    task :all => [:vampiro, :tests, :docs]

    LIB_ES_SOURCES = FileList['alan_es/Foundation/*.i']

    ## Vampiro
    ##########
    desc "Vampiro"
    task :vampiro
    CreateTranscriptingTasksFromFolder(:vampiro,'alan_es/vampiro', LIB_ES_SOURCES)

    ## ES Test Suite
    ################
    desc "Spanish test suite"
    task :tests
    CreateTranscriptingTasksFromFolder(:tests,'alan_es/tests', LIB_ES_SOURCES)

    ## ES Documentation
    ###################
    desc "Spanish documentation"
    task :docs
    ES_ADOC_DEPS = LIB_ES_SOURCES + FileList['alan_es/docs/*.adoc', 'alan_es/docs/*.alan', 'alan_es/docs/*.a3s']
    CreateADocTranscriptingTasksFromFolder(:docs,'alan_es/docs', LIB_ES_SOURCES)
    CreateAsciiDocHTMLTasksFromFolder(:docs,'alan_es/docs', ES_ADOC_DEPS, ADOC_OPTS)
  end # lib:es:

  ## ITALIAN LIBRARY
  ##################
  namespace "it" do

    desc "Italian library"
    task :all => [:cloak, :tests]

    LIB_IT_SOURCES = FileList['alan_it/Foundation/*.i']

    ## Cloak of Darkness
    ####################
    desc "Cloak of Darkness Italian"
    task :cloak
    CreateTranscriptingTasksFromFolder(:cloak,'alan_it/cloak', LIB_IT_SOURCES)

    ## IT Test Suite
    ################
    desc "Italian test suite"
    task :tests
    CreateTranscriptingTasksFromFolder(:tests,'alan_it/tests', LIB_IT_SOURCES)
  end # lib:it:
end   # lib:


## Developers' Documentation
############################

# The "Foundation Design" book includes some source code snippets from the
# English library, via tagged-regions 'include::' directives, hence the
# presence of LIB_EN_SOURCES in its dependencies list.

desc "Developers' Documentation"
task :devdocs
DESIGN_ADOC_DEPS = LIB_EN_SOURCES + FileList[
  'alan_en/docs/foundation_app_syntaxes.adoc',
  'dev-docs/design/*.adoc'
]
CreateAsciiDocHTMLTasksFromFolder(:devdocs,'dev-docs/design', DESIGN_ADOC_DEPS, ADOC_OPTS)
