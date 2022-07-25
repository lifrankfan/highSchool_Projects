#!/bin/bash
source /etc/environment
swiftc main.swift -o main && (swiftc -dump-ast main.swift > conformance.txt)
