vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/cpp_utils
    REF b342e3eea9538c7a35019b56f21a5f50439a4f74
    SHA512 97b2a6b1770595559185e75405a28af191765fbbc9827ea06ae507086b3a599aecc6f2520cc75a2f53be0bf4db829ebc55fb6ddf814405bee7b6b70d84b9529f
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "ml_cpp_utils")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")