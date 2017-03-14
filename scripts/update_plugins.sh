PLUGIN=~/.vim_runtime/plugins/*
for dir in $PLUGIN
do
    cd $dir
    echo `pwd`
    git pull
done

