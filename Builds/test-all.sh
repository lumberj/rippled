#/bin/sh

#    This file is part of rippled: https://github.com/ripple/rippled
#    Copyright (c) 2012 - 2015 Ripple Labs Inc.
#
#    Permission to use, copy, modify, and/or distribute this software for any
#    purpose  with  or without fee is hereby granted, provided that the above
#    copyright notice and this permission notice appear in all copies.
#
#    THE  SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
#    WITH  REGARD  TO  THIS  SOFTWARE  INCLUDING  ALL  IMPLIED  WARRANTIES  OF
#    MERCHANTABILITY  AND  FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
#    ANY  SPECIAL ,  DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
#    WHATSOEVER  RESULTING  FROM  LOSS  OF USE, DATA OR PROFITS, WHETHER IN AN
#    ACTION  OF  CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
#    OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

# Invoke as "sh ./Builds/test-all.sh"
# or first make it executable ("chmod a+rx ./Builds/test-all.sh")
#   then invoke as "./Builds/test-all.sh"
#
# The build must succeed without shell aliases for this to work. 
#
# Common problems:
# 1) Boost not found. Solution: export BOOST_ROOT=[path to boost folder]
# 2) OpenSSL not found. Solution: export OPENSSL_ROOT=[path to OpenSSL folder]
# 3) scons is an alias. Solution: Create a script named "scons" somewhere in
#    your $PATH (eg. ~/bin/scons will often work).
#       #!/bin/sh
#       python /C/Python27/Scripts/scons.py "${@}"

BUILD=( "debug" "release" "all" )
test=$( dirname $0 )
test="${test}/test-only.sh"

"${test}" "${BUILD[@]}"
