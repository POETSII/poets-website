#!/usr/bin/env python

import sys

# Example usage:
#
# ./obfuscate.py "hello world"

def main():
    input_str = sys.argv[1]
    words = ["&#%d;" % ord(c) for c in input_str]
    print "".join(words)


if __name__ == '__main__':
    main()