# Use, modification, and distribution are
# subject to the Boost Software License, Version 1.0. (See accompanying
# file LICENSE.txt)
#
# Copyright Rene Rivera 2020.

# For Drone CI we use the Starlark scripting language to reduce duplication.
# As the yaml syntax for Drone CI is rather limited.
#
#
globalenv={'secure': 'gB1wvjk565j3O4UBGjyN44Vd8IGqcNHzkbvRdFNHp7C+C+JG2vhAeLlpiK0Zd483gdTjq9gPjIDwpwyG2UJ+yjT1kMTJvD1YNWpGcK6vOHYl1yMOwv/LBdnKn+J7i/FnoeULGRCCI2Fpp1qILhxeZgLxTxsdQaYXlAkkR0i8cgQ='}
linuxglobalimage="cppalliance/droneubuntu1604:1"
windowsglobalimage="cppalliance/dronevs2019"

def main(ctx):
  return [
  linux_cxx("UNIT_TESTS=true COMPILER=clang++-3.9 BOOST_VE Job 0", "clang++-3.9", packages="clang-3.9 valgrind", llvm_os="xenial", llvm_ver="3.9", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'clang++-3.9', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': 'b6589fc6ab'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=clang++-4.0 BOOST_VE Job 1", "clang++-4.0", packages="clang-4.0 valgrind", llvm_os="xenial", llvm_ver="4.0", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'clang++-4.0', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': '356a192b79'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=clang++-5.0 BOOST_VE Job 2", "clang++-5.0", packages="clang-5.0 valgrind", llvm_os="xenial", llvm_ver="5.0", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'clang++-5.0', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': 'da4b9237ba'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=clang++-6.0 BOOST_VE Job 3", "clang++-6.0", packages="clang-6.0 valgrind", llvm_os="xenial", llvm_ver="6.0", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'clang++-6.0', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': '77de68daec'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=clang++-7 BOOST_VERS Job 4", "clang++-7", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'clang++-7', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': '1b64538924'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=g++-6 BOOST_VERSION= Job 5", "g++-6", packages="g++-6 valgrind", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'g++-6', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': 'ac3478d69a'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=g++-7 BOOST_VERSION= Job 6", "g++-7", packages="g++-7 valgrind", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'g++-7', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': 'c1dfd96eea'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=g++-8 BOOST_VERSION= Job 7", "g++-8", packages="g++-8 valgrind", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'g++-8', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': '902ba3cda1'}, globalenv=globalenv),
  osx_cxx("UNIT_TESTS=true BOOST_VERSION=default Job 8", "g++", packages="", buildtype="boost", xcode_version="11", environment={'UNIT_TESTS': 'true', 'BOOST_VERSION': 'default', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': 'fe5dbbcea5'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 9", "default", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'CMAKE_OPTIONS': '-DCMAKE_CXX_STANDARD=17 -DCMAKE_CXX_STANDARD_REQUIRED=ON', 'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': '0ade7c2cf9'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=g++-6     BOOST_VERS Job 10", "g++-6", packages="g++-6 valgrind", buildtype="boost", image=linuxglobalimage, environment={'CMAKE_OPTIONS': '-DCMAKE_CXX_STANDARD=17 -DCMAKE_CXX_STANDARD_REQUIRED=ON', 'UNIT_TESTS': 'true', 'COMPILER': 'g++-6', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': 'b1d5781111'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 11", "default", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'CMAKE_OPTIONS': '-DBOOST_HANA_ENABLE_CONCEPT_CHECKS=OFF', 'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': '17ba079149'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 12", "default", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'CMAKE_OPTIONS': '-DBOOST_HANA_ENABLE_DEBUG_MODE=ON', 'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': '7b52009b64'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 13", "default", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'CMAKE_OPTIONS': '-DBOOST_HANA_ENABLE_EXCEPTIONS=OFF', 'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': 'bd307a3ec3'}, globalenv=globalenv),
  osx_cxx("UNIT_TESTS=true BOOST_VERSION=default CMAKE_O Job 14", "g++", packages="", buildtype="boost", xcode_version="11", environment={'CMAKE_OPTIONS': '-DBOOST_HANA_ENABLE_EXCEPTIONS=OFF', 'UNIT_TESTS': 'true', 'BOOST_VERSION': 'default', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': 'fa35e19212'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 15", "default", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': '1.64.0', 'DRONE_JOB_UUID': 'f1abd67035'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 16", "default", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': '1.65.1', 'DRONE_JOB_UUID': '1574bddb75'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=default Job 17", "default", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'default', 'DRONE_JOB_UUID': '0716d9708d'}, globalenv=globalenv),
  linux_cxx("BOOST_BUILD=true COMPILER=default BOOST_VERSI Job 18", "default", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'BOOST_BUILD': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': '9e6a55b6b4'}, globalenv=globalenv),
  osx_cxx("BOOST_BUILD=true BOOST_VERSION=default Job 19", "g++", packages="", buildtype="boost", xcode_version="11", environment={'BOOST_BUILD': 'true', 'BOOST_VERSION': 'default', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': 'b3f0c7f6bb'}, globalenv=globalenv),
  osx_cxx("DOCUMENTATION=true BOOST_VERSION=default Job 20", "g++", packages="", buildtype="boost", environment={'DOCUMENTATION': 'true', 'BOOST_VERSION': 'default', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': '91032ad7bb'}, globalenv=globalenv),
  linux_cxx("BENCHMARKS=true COMPILER=default BOOST_VERSIO Job 21", "default", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'CMAKE_OPTIONS': '-DCMAKE_BUILD_TYPE=Release', 'BENCHMARKS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': '472b07b9fc'}, globalenv=globalenv),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 22", "default", packages="clang-7 valgrind", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'trunk', 'DRONE_JOB_UUID': '12c6fc06c9'}, globalenv=globalenv),
  ]

# from https://github.com/boostorg/boost-ci
load("@boost_ci//ci/drone/:functions.star", "linux_cxx","windows_cxx","osx_cxx","freebsd_cxx")
