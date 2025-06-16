vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/containers
    REF cbddf348db7364fb02faa47e5d723d7d3396db31
    SHA512 b81f5c564eda395283632b9308a6efe42fde0bee670e2e01d793c19886715d5cc6041812dafa42c8a450be5c83fb71d6f17d68168e752ee3d7a20396a179a3c1
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "containers")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")