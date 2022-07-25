#!/bin/bash
swiftc main.swift -o main && (swiftc -dump-ast main.swift > conformance.txt)
