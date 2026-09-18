# Default settings for testing Fedora ELN.

# This is a reasonable default used until the new release is detected by osinfo library.
export KSTEST_OSINFO_NAME=fedora-eln
source ./network-device-names.cfg
# http, not https, so that the squid cache (containers/squid.sh) can actually
# cache these: a TLS connection is an opaque tunnel, and nothing in it is
# cacheable. RPMs are GPG-signed, so TLS is not what protects their integrity
# here. The mirror redirector hands out plain http mirrors for these paths, so
# unlike dl.fedoraproject.org this does not immediately bounce back to https.
export KSTEST_URL='http://download.fedoraproject.org/pub/eln/1/BaseOS/x86_64/os/'
export KSTEST_MODULAR_URL='http://download.fedoraproject.org/pub/eln/1/AppStream/x86_64/os/'
export KSTEST_FTP_URL='ftp://ftp-stud.hs-esslingen.de/pub/Mirrors/fedora-eln/1/BaseOS/x86_64/os/'
export KSTEST_FTP_APPSTREAM_URL='ftp://ftp-stud.hs-esslingen.de/pub/Mirrors/fedora-eln/1/AppStream/x86_64/os/'
export KSTEST_OSTREECONTAINER_URL='quay.io/fedora/eln:latest'
