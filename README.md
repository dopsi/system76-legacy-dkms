# `system76-legacy` - System76 legacy support module

This module is designed to provide support to the older System76 laptop
models which are not supported by the [`system76`
module](https://github.com/pop-os/system76-dkms).

Supported models:

* `oryp3`: [Oryx Pro](https://system76.com/laptops/oryx)

## Development

To install this as a kernel module:

```sh
# Compile the module
make
# Remove any old instances
sudo modprobe -r system76_legacy
# Insert the new module
sudo insmod system76_legacy.ko
# View log messages
dmesg | grep system76_legacy
```

## References

* [Writing an ACPI driver](https://lwn.net/Articles/367630/)
* [Writing a WMI driver](https://lwn.net/Articles/391230/)
