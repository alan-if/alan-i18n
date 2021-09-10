=begin "alan.rb" v0.2.0 | 2021/09/10 | by Tristano Ajmone | MIT License
================================================================================
Some custom Rake helper methods for automating common Alan SDK operations that
we use across different Alan projects.
================================================================================
=end

def CreateTranscript(storyfile, solution)
  # ----------------------------------------------------------------------------
  # Only ISO solutions and transcripts! When we'll switch to UTF-8 will tweak it
  # to handle UTF-8 encoded solutions, for this method will strip the BOM before
  # piping it to ARun. It's just not wroth keeping double methods.
  # ----------------------------------------------------------------------------
  TaskHeader("Generating Transcript: #{solution.ext('.a3t')}")

  target_folder = storyfile.pathmap("%d")
  a3s = solution.pathmap("%f")
  a3t = a3s.ext('.a3t')
  a3c = storyfile.pathmap("%f")

  cd "#{$repo_root}/#{target_folder}"
  sol_file = File.open(a3s, mode: "rt", encoding: "ISO-8859-1")
  IO.popen("arun -r -i #{a3c} > #{a3t}", "r+") do |transcript|
    transcript.puts sol_file.read
  end
  cd $repo_root, verbose: false
end


def CreateTranscriptingTasksFromFolder(target_task, target_folder, dependencies)
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
        CreateTranscript(storyfile, solution)
      end
    end
  end
end


## Rules
########

rule ".a3c" => ".alan" do |t|
  # We assume consistent naming convention for libraries folder:
  #   /alan_<en|es|it|sv>/Foundation/
  lib_dir = File::expand_path(t.source.pathmap("%1d") << "/Foundation")
  adv_src = t.source.pathmap("%f")
  adv_dir = t.source.pathmap("%d")

  TaskHeader("Compiling: #{t.source}")

  cd "#{$repo_root}/#{adv_dir}"
  sh "alan -include #{lib_dir} #{adv_src} 1>#{$devnull}"
  cd $repo_root, verbose: false
end
