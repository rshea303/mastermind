lib_path = FILE.expand_path('lib', '__dir__')
$LOAD_PATH.unshift(lib_path)
require 'cli'

CLI.new($stdin, $stdout).call
