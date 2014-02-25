# fish completion for pip

function __fish_pip_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 -a $cmd[1] = 'pip' ]
    return 0
  end
  return 1
end

function __fish_pip_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

# general options
complete -f -c pip -n 'not __fish_pip_needs_command' -s h -l help -d 'Show help.'
complete -f -c pip -n 'not __fish_pip_needs_command' -s v -l verbose -d 'Give more output. Option is additive, and can be used up to 3 times.'
complete -f -c pip -n 'not __fish_pip_needs_command' -s V -l version -d 'Show version and exit.'
complete -f -c pip -n 'not __fish_pip_needs_command' -s q -l quiet -d 'Give less output.'
complete -f -c pip -n 'not __fish_pip_needs_command' -l log-file -a file -d 'Path to a verbose non-appending log, that only logs failures. This log is active by default at $HOME/.pip/pip.log.'
complete -f -c pip -n 'not __fish_pip_needs_command' -l log -a path -d '.th to a verbose appending log. This log is inactive by default.'
complete -f -c pip -n 'not __fish_pip_needs_command' -l proxy -a proxy -d 'Specify a proxy in the form [user:passwd@]proxy.server:port.'
complete -f -c pip -n 'not __fish_pip_needs_command' -l timeout -a seconds -d 'Set the socket timeout (default 6000.0 seconds).'
complete -f -c pip -n 'not __fish_pip_needs_command' -l exists-action -a action -d 'Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup.'
complete -f -c pip -n 'not __fish_pip_needs_command' -l cert -a path -d 'Path to alternate CA bundle.'

# pip install
complete -f -c pip -n '__fish_pip_needs_command' -a install -d 'Install packages.'
complete -f -c pip -n '__fish_git_using_command install' -s U -l upgrade -d 'Upgrade all packages to the newest available version. This process is recursive regardless of whether a dependency is already satisfied.'
complete -f -c pip -n '__fish_git_using_command install' -s U -l upgrade -d 'Upgrade all packages to the newest available version. This process is recursive regardless of whether a dependency is already satisfied.'
complete -f -c pip -n '__fish_git_using_command install' -l force-reinstall -d 'When upgrading, reinstall all packages even if they are already up-to-date.'

# pip uninstall
complete -f -c pip -n '__fish_pip_needs_command' -a uninstall -d 'Uninstall packages.'

# pip freeze
complete -f -c pip -n '__fish_pip_needs_command' -a freeze -d 'Output installed packages in requirements format.'

# pip list
complete -f -c pip -n '__fish_pip_needs_command' -a list -d 'List installed packages.'

# pip show
complete -f -c pip -n '__fish_pip_needs_command' -a show -d 'Show information about installed packages.'

# pip search
complete -f -c pip -n '__fish_pip_needs_command' -a search -d 'Search PyPI for packages.'

# pip wheel
complete -f -c pip -n '__fish_pip_needs_command' -a wheel -d 'Build wheels from your requirements.'

# pip zip
complete -f -c pip -n '__fish_pip_needs_command' -a zip -d 'Zip individual packages.'

# pip unzip
complete -f -c pip -n '__fish_pip_needs_command' -a unzip -d 'Unzip individual packages.'

# pip bundle
complete -f -c pip -n '__fish_pip_needs_command' -a bundle -d 'Create pybundles.'

# pip help
complete -f -c pip -n '__fish_pip_needs_command' -a help -d 'Show help for commands.'

