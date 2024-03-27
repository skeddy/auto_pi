# auto_pi
A quick little script for when my raspberry pi 5 boots up

## Pre-requsites
## Pre-requsites
It is assumed that..

* You have flashed the OS onto a card
* wifi is enabled enabled
* SSH session connected
* GIT installed (if not - ```sudo apt install git -y```

If you've not managed to SSH to it.... please try again.

## Steps
Execute the following

### All in one approach
```git clone https://github.com/skeddy/auto_pi && cd auto_pi && chmod +x install_stage_1.sh && sudo ./install_stage_1.sh```

### Cautious approach
```git clone https://github.com/skeddy/auto_pi```

```cd auto_pi```

```chmod +x install_stage_1.sh```

```sudo ./install_stage_1.sh```
