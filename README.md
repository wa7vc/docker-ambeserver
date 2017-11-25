== Docker AMBEServer ==

We want to use the [AMBEServer](ttps://github.com/dl5di/OpenDV/tree/master/DummyRepeater/DV3000) with a ThumbDV, but not a raspberry pi.
In the spirit of "dockerize all the things", here we are.

== Usage ==
* Clone Repo, and CD into folder
* docker build -t ambeserver .
* docker run --rm --device=/dev/ttyUSB0 -p 2460:2460/udp -d ambeserver

Make sure that /dev/ttyUSB0 is the USB device on the *host* that represents the ThumbDV.
