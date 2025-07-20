vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/cpp_utils
    REF e421ebd7a7fd4fd19524737957433a925f9ff32c
    SHA512 ab4989b244c651866148b94885e93068f7fcea1e283162dc1ebfff26b9a6177957567afa8a79f01f4242d48a51d3c6c3445c5ad9c0c2ed5d66e4d7cb5422c0dc
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "ml_cpp_utils")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")