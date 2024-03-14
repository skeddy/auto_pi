# auto_pi
A quick little script for when my raspberry pi 5 boots up

## Pre-requsites
It is assumed that you have flashed the OS onto a card, with wifi enabled, and a SSH session connected.

If you've not managed to SSH to it.... please try again.

## Steps
Execute the following

### All in one approach
git clone https://github.com/skeddy/auto_pi && cd auto_pi && chmod +x install_stage_1.sh && sudo ./install_stage_1.sh

### Cautious approach
git clone https://github.com/skeddy/auto_pi

cd auto_pi

chmod +x install_stage_1.sh

sudo ./install_stage_1.sh
