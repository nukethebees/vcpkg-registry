vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/containers
    REF v0.2.1
    SHA512 a4e488d8d4cd0e8ce12cd7d81b0125e868f28475f23b90fb59630f55a28ac6e6ea39739161cdb5b77e925837be44d59369c3c3492aea298d0d80b4f033b29da0
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "containers")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")