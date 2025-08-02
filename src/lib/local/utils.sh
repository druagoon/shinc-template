#######################################
# Remove trailing newline from a string.
# Arguments:
#   $1: String to process.
# Outputs:
#   Writes string without trailing newline to stdout.
#######################################
chomp() { printf "%s" "${1/"$'\n'"/}"; }

#######################################
# Print a warning message in yellow to stderr.
# Arguments:
#   $1: Warning message.
# Outputs:
#   Writes formatted warning to stderr.
#######################################
warn() {
    printf "$(std::color::yellow Warning): %s\n" "$(chomp "$1")" >&2
}

#######################################
# Print an error message in red to stderr.
# Arguments:
#   $1: Error message.
# Outputs:
#   Writes formatted error to stderr.
#######################################
error() {
    printf "$(std::color::red Error): %s\n" "$(chomp "$1")" >&2
}
