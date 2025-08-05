vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/cpp_utils
    REF v0.4.0
    SHA512 fd7172a0dcba30b2d8e7bf2e011f662c93c597e9f9da72a3cc3a911dc28d4601ed81fa68b9b9b3c77a8e2d694417dd9e42e588a395df72ff9eb1c0f5fcac4afe
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "ml_cpp_utils")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")