#!/bin/sh
if [ ! -f UUID ]; then
  UUID="515f9bce-22e9-48ff-a004-9225ecd5ef9a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

