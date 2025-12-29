echo "This file removes all the tar images. You can quickly regenerate them by executing mergeAndCreate.sh"

read -r -p "Are you sure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

        shopt -s dotglob nullglob

        for dir in */ ; do
            echo "$dir"

            for tarfile in "$dir"*.tar ; do
                [ -e "$tarfile" ] || continue
                rm -v -- "$tarfile"
            done

        done
        ;;

    *)
        echo "Wise choice. Make sure you have sufficient HDD space"
        ;;
esac
