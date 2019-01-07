#!/bin/bash

IMAGE_DIR=images
IMAGE_TARBALLS=$(find $IMAGE_DIR/ -name *.tar.gz -printf "%f\n")

extract_tarball () {
  TARBALL=$1

  EXTRACTED_NAME=${TARBALL%.tar.gz}
  echo "Extracting $TARBALL to $EXTRACTED_NAME"
  tar -Oxzf $TARBALL > $EXTRACTED_NAME
}

for TARBALL in $IMAGE_TARBALLS; do
  extract_tarball $IMAGE_DIR/$TARBALL
done

for IMAGE in $IMAGE_TARBALLS; do
  fastboot flash ${IMAGE%.img.tar.gz} $IMAGE_DIR/${IMAGE%.tar.gz}
done

fastboot format:ext4 cache
fastboot format:ext4 userdata
fastboot reboot
