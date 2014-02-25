#!/bin/sh

function backupDir {
  cp -r $1 $1.$(date +%d-%m-%y).backup
}

function printColumn {
  awk "{ print \$$1 }"
}
