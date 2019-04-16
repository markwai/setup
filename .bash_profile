# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin

source /Users/mwai/venv/bin/activate

export PATH
export GROWTH_PATH=/Users/mwai/OneDrive\ -\ Tesla/growth
export PYTHONPATH=/Users/mwai/OneDrive\ -\ Tesla/growth/sots
export GOOGLE_APPLICATION_CREDENTIALS=/Users/mwai/tesla-motors-analytics-394542d2daf8-growth.json
