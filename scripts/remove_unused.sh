# remove plugins not in list

PLUGINS=~/.vim_runtime/plugins/*

tmp1=~/.vim_runtime/installed_plugins
cd ~/.vim_runtime/plugins/

# read plugins.list
while read line
do
    AFTER_LAST_SLASH=${line##*/}
    PLUG_NAME=${AFTER_LAST_SLASH%.*}
    echo $PLUG_NAME >> $tmp1
done < ~/.vim_runtime/plugins.list

for plugin in $PLUGINS
do
    AFTER_LAST_SLASH=${plugin##*/}
    PLUG_NAME=${AFTER_LAST_SLASH%.*}
    grep -i $PLUG_NAME $tmp1 > /dev/null
    if [ ! $? -eq 0 ]; then
        echo "Removing $PLUG_NAME"
        rm -r ~/.vim_runtime/plugins/$PLUG_NAME
    fi
done

rm $tmp1

