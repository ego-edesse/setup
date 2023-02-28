#   This script will play whatever .wav soundfile you provide within aplay,
#   here scout_fire-1.wav which comes from the CS:S weapon (see this gh repo:
#   https://github.com/sourcesounds/cstrike)

# TODO: disable terminal output after execution


function gunfire_sound {
  # Get the directory of the script
  local script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

  # Play the sound file located in the same directory as the script
  aplay -q "${script_dir}/scout_fire-1.wav"
}

# Hook into zsh preexec function to check for "git push" commands
preexec() {
  if [[ "$1" == "git push"* ]]; then
    gunfire_sound
  fi
}
