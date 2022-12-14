#!/bin/bash

Black='\033[0;30m'
DarkGray='\033[1;30m'

Red='\033[0;31m'
LightRed='\033[1;31m'

Green='\033[0;32m'
LightGreen='\033[1;32m'

Brown='\033[0;33m'
Yellow='\033[1;33m'

Blue='\033[0;34m'
LightBlue='\033[1;34m'

Purple='\033[0;35m'
LightPurple='\033[1;35m'

Cyan='\033[0;36m'
LightCyan='\033[1;36m'

LightGray='\033[0;37m'
White='\033[1;37m'

NC='\033[0m' # No Color

messanger_build_debug()
{
  printf "${Blue}>> Building (debug) ${NC}\n"
  printf "${Blue}------------------------${NC}\n\n"

  mkdir -p build/debug
  nim c -o:build/debug/client sources/client.nim
}

messanger_build_release()
{
  printf "${Blue}>> Building (release) ${NC}\n"
  printf "${Blue}------------------------${NC}\n\n"

  mkdir -p build/release
  nim c -o:build/release/client -d:release sources/client.nim
}

messanger_run_debug()
{
  ./build/debug/client
}

messanger_run_release()
{
  ./build/release/client
}

messanger_clean()
{
  printf "${Blue}>> Cleaning build directory ${NC}\n"
  printf "${Blue}------------------------${NC}\n\n"

  rm -r build/*
}
