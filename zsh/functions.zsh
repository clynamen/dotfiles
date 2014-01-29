#!/bin/sh

function backupDir {
  cp -r $1 $1.$(date +%d-%m-%y).backup
}
