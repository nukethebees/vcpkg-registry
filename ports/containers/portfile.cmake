vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/containers
    REF 8df8654ff84dc1942ff6a0d412aa5cdf1a0b8de5
    SHA512 32da2747386e647e6522e0470a4d8a70df115bdfef8824b753b9734a069be579f1ea85a146be9f02de3d242d7f214b75e4c576252a49383e1bb67f99c7b9926a
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "containers")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")