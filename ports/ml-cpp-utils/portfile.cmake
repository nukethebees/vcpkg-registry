vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/cpp_utils
    REF v0.3.0
    SHA512 a64e2a379dcaf7f319e07d33194b171ab88fe3f3237d0a110d4c41eab60ffb65d9cc599c8bc36cdae9014ede607d0ce7b78257ac50c88b485dcbc611b5181b39
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "ml_cpp_utils")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")