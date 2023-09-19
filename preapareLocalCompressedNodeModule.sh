#!/usr/bin/env bash
echo "`date "+%Y-%m-%d %H:%M:%S"` preapareLocalCompressedNodeModule started"
if [ -f "./node_modules.tar.gz" ]; then
  rm -rf ./node_modules.tar.gz
fi
cd node_modules
tar -zcf ../node_modules.tar.gz .
cd ../
rm -rf ./node_modules
rm -rf oryx-manifest.toml
echo 'PlatformName="nodejs"' >> oryx-manifest.toml
echo 'CompressedNodeModulesFile="node_modules.tar.gz"' >> oryx-manifest.toml
echo "`date "+%Y-%m-%d %H:%M:%S"` preapareLocalCompressedNodeModule end"
