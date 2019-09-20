killPort () {
  fuser -k -n tcp $1
}

zipedit(){
  echo "Usage: zipedit archive.zip file.txt"
  unzip "$1" "$2" -d /tmp
  vim /tmp/$2 && zip -j --update "$1"  "/tmp/$2"
}

function glvv(){
  for branch in `git branch -r | grep -v HEAD`; do echo -e `git show --format="%ai %ar by %an" $branch | head -n 1` \\t$branch; done | sort -r
}

function glr(){
  for k in `git branch -r | perl -pe 's/^..(.*?)( ->.*)?$/\1/'`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r
}

# export NODE_TLS_REJECT_UNAUTHORIZED=0
