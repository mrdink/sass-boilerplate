# Require any additional compass plugins here.
require 'bourbon'

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "assets/css"
sass_dir = "scss"
images_dir = "assets/img"
javascripts_dir = "assets/js"

output_style = :compact

relative_assets = true

line_comments = false
color_output = false

preferred_syntax = :scss

# Move style.css and editor-style.css to root of project
require 'fileutils'
on_stylesheet_saved do |file|
  if File.exists?(file) && File.basename(file) == "style.css"
    FileUtils.mv(file, File.dirname(file) + "/../../" + File.basename(file))
  end

  if File.exists?(file) && File.basename(file) == "editor-style.css"
    FileUtils.mv(file, File.dirname(file) + "/../../" + File.basename(file))
  end
end