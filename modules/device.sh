device_info() {

    echo "======================="
    echo " DEVICE INFORMATION"
    echo "======================="

    echo
    uname -a

    echo
    getprop ro.product.model

}
device_info
