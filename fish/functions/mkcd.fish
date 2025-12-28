function mkcd -d “Create a directory and switch to it”
    mkdir -p $argv[1]
    and cd $argv[1]
end
