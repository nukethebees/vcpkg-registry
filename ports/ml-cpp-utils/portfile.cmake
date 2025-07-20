vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/cpp_utils
    REF 4d88778ce945dde9eb8167fef776a096723d4f68
    SHA512 2e799d577fbee3aeee5e96ed4560759fc8633bc26aacf822f187bdafb0f5c272d1cfee4849cd5a26a3b8991a3da21ddbcd632168947021c64e7049554136a6ff
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "ml_cpp_utils")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")