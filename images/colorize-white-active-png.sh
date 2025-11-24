# Optional: install imagemagick
brew install imagemagick

# Colorize all PNG files with active suffix to white
for f in *-active.png; do
  convert "$f" -colorspace RGB -fill white -colorize 100% "$f"
done