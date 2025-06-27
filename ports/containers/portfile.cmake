vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/containers
    REF v0.5.0
    SHA512 da1015e9fa257f8d2923a1f41bedd0d17b98c5fc455b88705867131cc5ef37ede09b960365ee74080c546493d3f0c985bf43480f573dcf31d25c95d7a4f2a55f
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "containers")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")