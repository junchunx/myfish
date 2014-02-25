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

