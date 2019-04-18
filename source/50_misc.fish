# Prevent less from clearing the screen while still showing colors.
set -x LESS '-XR'

# Direnv config
eval (direnv hook fish)
