# Copyright 2020 Nokia
# Licensed under the BSD 3-Clause License.
# SPDX-License-Identifier: BSD-3-Clause

# Start iperf3 server in the background
# with 8 parallel tcp streams, each 200 Kbit/s == 1.6Mbit/s
# using ipv6 interfaces
iperf3 -c 172.17.0.2 -t 10000 -i 1 -p 5201 -B 172.18.0.2 -P 8 -b 5M -M 1460 &