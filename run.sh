# softlink configs to targetFolder
myConfigFolder=`pwd`/
targetFolder=~
for file in `ls -a`; do
    cd $targetFolder
    if [[ $file != '.' && $file != '..' && $file != '.git' && $file != '.gitignore' && ${file:0:1} == '.' ]]; then
        if [[ -e $file ]]; then
            while :; do
                echo $file 'exists! input `r` to replace , `d` to show diff, or `s` to skip'
                read
                if [[ $REPLY == 'r' ]]; then
                    rm -rf $file
                    break
                else
                    if [[ $REPLY == 'd' ]]; then
                        echo diff start
                        diff $file $myConfigFolder$file -r -u
                        echo diff end
                    else
                        if [[ $REPLY == 's' ]]; then
                            break
                        fi
                    fi
                fi
            done
        fi
        if [[ ! -e $file ]]; then
            ln -s $myConfigFolder$file .
            echo soft link for $file
        fi
    fi
done


# other scripts

# vim undo folder
VimUndoFolder=~/.vim/.undo
if [[ ! -e $VimUndoFolder ]]; then
    mkdir $VimUndoFolder -p
fi
