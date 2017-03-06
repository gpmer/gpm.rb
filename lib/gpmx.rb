require 'rubygems'
require 'commander/import'

# :name is optional, otherwise uses the basename of this executable
program :name, 'Foo Bar'
program :version, '1.0.0'
program :description, 'Stupid command that prints foo or bar.'

command :foo do |c|
  c.syntax = 'foobar foo'
  c.description = 'Displays foo'
  c.action do |args, options|
    say 'foo'
  end
end

command :bar do |c|
  c.syntax = 'foobar bar [options]'
  c.description = 'Display bar with optional prefix and suffix'
  c.option '--prefix STRING', String, 'Adds a prefix to bar'
  c.option '--suffix STRING', String, 'Adds a suffix to bar'
  c.action do |args, options|
    options.default :prefix => '(', :suffix => ')'
    say "#{options.prefix}bar#{options.suffix}"
  end
end

command :list do |c|
  c.syntax = 'list'
  c.description = 'display the all repo.'
  c.action do |args, options|
    say 'run <list> command'
  end
end

command :add do |c|
  c.syntax = 'add <repo>'
  c.description = 'clone repo into local dir.'
  c.action do |args, options|
    say 'run <add> command'
    say args
  end
end

command :remove do |c|
  c.syntax = 'remove'
  c.description = 'remove a repo.'
  c.action do |args, options|
    say 'run <remove> command'
  end
end

command :clean do |c|
  c.syntax = 'clean'
  c.description = 'clean the temp/cache.'
  c.action do |args, options|
    say 'run <clean> command'
  end
end

command :relink do |c|
  c.syntax = 'relink'
  c.description = 'relink the base dir which contain repositories if you delete repository manually.'
  c.action do |args, options|
    say 'run <relink> command'
  end
end

command :import do |c|
  c.syntax = 'import <dir>'
  c.description = 'register a repository to GPM.'
  c.action do |args, options|
    say 'run <relink> command'
    say args
  end
end