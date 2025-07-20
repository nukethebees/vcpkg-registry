vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/cpp_utils
    REF 0a1d3f1b9f31d407ab260e1a0dc59b58ab61bc8a
    SHA512 a083fd281c87b9ad4130493f48707ea7ff51f5c2df7fc2de0267680b01d1c96e5e83a6ee29cdc583f789b84eef7e6df45136f4853c6b154d348a0818427e256c
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "ml_cpp_utils")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")