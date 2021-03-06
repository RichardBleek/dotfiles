# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# Setting PATH for Python 3.7
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH

# Add jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# Set graal path
export GRAALVM_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-1.0.0-rc16/Contents/Home/
