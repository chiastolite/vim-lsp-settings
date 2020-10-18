#!/usr/bin/env bash

set -e

# git clone --depth=1 https://github.com/castwide/solargraph .
# bundle install --without development --path vendor/bundle

mkdir solargraph
gem install -i solargraph solargraph

cat <<EOF >solargraph
#!/usr/bin/env bash

DIR=\$(cd \$(dirname \$0); pwd)/solargraph
GEM_PATH=\$DIR/solargraph/ \$DIR/bin/solargraph \$*
EOF

chmod +x solargraph
