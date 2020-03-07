#!/usr/bin/env python
import os
import sys
import json
import hashlib
import argparse

try:
  # Python 3
  from urllib.request import urlretrieve
except ImportError:
  # Python 2
  from urllib import urlretrieve


def download_progress(count, blockSize, totalSize):
    if count % 1000 == 0:
      sys.stdout.write('.')
      sys.stdout.flush()


def sha256_checksum(filename, block_size=65536):
  sha256 = hashlib.sha256()
  with open(filename, 'rb') as f:
    for block in iter(lambda: f.read(block_size), b''):
      sha256.update(block)
  return sha256.hexdigest()


def download(url, fhash, finalname):
  try:
    assert sha256_checksum(finalname).lower() == fhash.lower()
    print("already downloaded %s" % url)
    return
  except Exception:
    pass

  print("downloading %s with hash %s" % (url, fhash))
  fn = url.split("/")[-1]
  urlretrieve(url, fn, download_progress)
  assert sha256_checksum(fn).lower() == fhash.lower()

  print("hash check pass")
  os.rename(fn, finalname)


if __name__ == "__main__":
  parser = argparse.ArgumentParser(description='Download NEOS')
  parser.add_argument('--devel', action='store_true',
                      help='Download NEOS version used in devel branch')

  args = parser.parse_args()
  if args.devel:
    fn = "update_devel.json"
  else:
    fn = "update.json"

  up = json.load(open(fn))
  download(up['recovery_url'], up['recovery_hash'], "recovery.img")
  download(up['ota_url'], up['ota_hash'], "ota-signed-latest.zip")
