echo ">>> Clean files generated by makefile:"
make clean


echo ">>> Clean files *.bin:"
echo "Files *.bin found:"
find . -name "*.bin" -type f

find . -name "*.bin" -type f -delete
echo "All files *.bin deleted"
