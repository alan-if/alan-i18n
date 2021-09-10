=begin "asciidoc.rb" v0.1.0 | 2021/09/10 | by Tristano Ajmone | MIT License
================================================================================
Some custom Rake helper methods for automating common Asciidoctor operations
that we use across different documentation projects.
================================================================================
=end
def create_asciidoc_tasks_from_folder(target_task, target_folder, dependencies)
  adoc_sources = FileList["#{target_folder}/*.asciidoc"].each do |adoc_fpath|
    doc_src = adoc_fpath.pathmap("%f")
    html_fpath = adoc_fpath.ext('.html')
    task target_task => html_fpath
    file html_fpath => adoc_fpath
    file html_fpath => dependencies
    file html_fpath do
      hstr = "## Converting Document: #{adoc_fpath}"
      puts "\n#{hstr}"
      puts '#' * hstr.length

      cd "#{$repo_root}/#{target_folder}"
      sh "asciidoctor -wt #{doc_src}"
      cd $repo_root, verbose: false
    end
  end
end
