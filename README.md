RxTx
====

Simple scripts to monitor download and upload rates,
with logarithmic time scale.

* Replace `enp7s0` with your network device in `save_rxtx.sh`.

* Run `save_rxtx.sh` in the background. It appends to `/tmp/rxtx.dat`.

* Run `diff_rxtx.plt` with Gnuplot. Its window grabs focus every second so it can be annoying.

![Example plot](example.png)
