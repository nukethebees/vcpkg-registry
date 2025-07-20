vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/cpp_utils
    REF 6f4f2d0fdc1f8eeb753218aa3c0e283583d1016f
    SHA512 f7a77b705f8956543f98d3b0accff984bc0aa415cc3c88df7b96d37bc06adc2b4b3941bfd258784b2c000a3b2302b53fa15423d5b08930faab3738e0cfbea37d
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "ml_cpp_utils")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")