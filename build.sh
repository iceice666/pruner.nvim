set -e

cd pruner-nvim

cargo build --release

# Loop through possible extensions
for ext in .so .dylib .dll; do
    if [ -e "target/release/libpruner_nvim$ext" ]; then
        mv "target/release/libpruner_nvim$ext" "../lua/pruner_nvim$ext"
        rm -rf target
        echo "Build successful"
        exit 0
    fi
done

echo "No target file found"
exit 1
