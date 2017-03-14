mkdir -p ~/.vim_runtime/plugins
cd ~/.vim_runtime/plugins/
while read line
do
    git clone $line
done < ~/.vim_runtime/plugins.list
