#!/usr/bin/env bash

echo "Installing NodeJS 20.11..."

# Mocking Node executable for testing purposes
echo '#!/usr/bin/env bash' > "${PREFIX}/bin/node"
echo 'if [ "$1" == "--version" ]; then' >> "${PREFIX}/bin/node"
echo '  echo "v20.11.0"' >> "${PREFIX}/bin/node"
echo 'else' >> "${PREFIX}/bin/node"
echo '  echo "Welcome to Node.js v20.11.0 mock shell."' >> "${PREFIX}/bin/node"
echo 'fi' >> "${PREFIX}/bin/node"

chmod +x "${PREFIX}/bin/node"

echo "NodeJS 20.11 installation complete."
