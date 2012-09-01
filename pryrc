# Configure the way the prompt appears.
Pry.config.prompt = Pry::NAV_PROMPT

# Set editor.
Pry.config.editor = 'vim' 

# Require gems that you want available on start up.
begin
	# Require awesome_print and set it as default output printer.
	require 'awesome_print'
	Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError
end

if defined? Rails
  begin
    # Require gems here.
  rescue LoadError
  end
end