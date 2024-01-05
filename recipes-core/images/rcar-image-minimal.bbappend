require recipes-core/images/aos-image.inc

IMAGE_FSTYPES = "ext4"

#Disable RO rootfs
IMAGE_FEATURES:remove = "read-only-rootfs"

# System packages
IMAGE_INSTALL:append = " \
    bash \
    iperf3 \
    mc \
    netconfig \
    openssh \
    tzdata \
    python3-dev \
"

IMAGE_INSTALL:remove = "optee-client"
