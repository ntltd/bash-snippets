# Duplicate with "-active" suffix all files in directory
for f in *; do
  filename="${f%.*}"
  extension="${f##*.}"
  if [ "$filename" != "$f" ]; then
    cp "$f" "${filename}-active.${extension}"
  else
    cp "$f" "${f}-active"
  fi
done