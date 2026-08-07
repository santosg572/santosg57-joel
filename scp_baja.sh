#!/bin/bash

file="/misc/fmenaj/santosg/Joel_Martinez/Programas"

sshpass -p $1 scp -r santosg@172.24.220.150:$file .




