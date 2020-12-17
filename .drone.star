# Use, modification, and distribution are
# subject to the Boost Software License, Version 1.0. (See accompanying
# file LICENSE.txt)
#
# Copyright Rene Rivera 2020.

# Configuration for https://cloud.drone.io/.

# For Drone CI we use the Starlark scripting language to reduce duplication.
# As the yaml syntax for Drone CI is rather limited.

def main(ctx):
  return [
  linux_cxx("UNIT_TESTS=true COMPILER=clang++-3.9 BOOST_VE Job 0", "clang++-3.9", packages="clang-3.9 valgrind", llvm_os="trusty", llvm_ver="3.9", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'clang++-3.9', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': 'b6589fc6ab'}),
  linux_cxx("UNIT_TESTS=true COMPILER=clang++-4.0 BOOST_VE Job 1", "clang++-4.0", packages="clang-4.0 valgrind", llvm_os="trusty", llvm_ver="4.0", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'clang++-4.0', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': '356a192b79'}),
  linux_cxx("UNIT_TESTS=true COMPILER=clang++-5.0 BOOST_VE Job 2", "clang++-5.0", packages="clang-5.0 valgrind", llvm_os="trusty", llvm_ver="5.0", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'clang++-5.0', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': 'da4b9237ba'}),
  linux_cxx("UNIT_TESTS=true COMPILER=clang++-6.0 BOOST_VE Job 3", "clang++-6.0", packages="clang-6.0 valgrind", llvm_os="trusty", llvm_ver="6.0", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'clang++-6.0', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': '77de68daec'}),
  linux_cxx("UNIT_TESTS=true COMPILER=clang++-7 BOOST_VERS Job 4", "clang++-7", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'clang++-7', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': '1b64538924'}),
  linux_cxx("UNIT_TESTS=true COMPILER=g++-6 BOOST_VERSION= Job 5", "g++-6", packages="g++-6 valgrind", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'g++-6', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': 'ac3478d69a'}),
  linux_cxx("UNIT_TESTS=true COMPILER=g++-7 BOOST_VERSION= Job 6", "g++-7", packages="g++-7 valgrind", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'g++-7', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': 'c1dfd96eea'}),
  linux_cxx("UNIT_TESTS=true COMPILER=g++-8 BOOST_VERSION= Job 7", "g++-8", packages="g++-8 valgrind", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'g++-8', 'BOOST_VERSION': 'default', 'ENABLE_MEMCHECK': 'true', 'DRONE_JOB_UUID': '902ba3cda1'}),
  osx_cxx("UNIT_TESTS=true BOOST_VERSION=default Job 8", "g++", packages="", buildtype="boost", xcode_version="11", environment={'UNIT_TESTS': 'true', 'BOOST_VERSION': 'default', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': 'fe5dbbcea5'}),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 9", "default", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'CMAKE_OPTIONS': '-DCMAKE_CXX_STANDARD=17 -DCMAKE_CXX_STANDARD_REQUIRED=ON', 'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': '0ade7c2cf9'}),
  linux_cxx("UNIT_TESTS=true COMPILER=g++-6     BOOST_VERS Job 10", "g++-6", packages="g++-6 valgrind", buildtype="boost", environment={'CMAKE_OPTIONS': '-DCMAKE_CXX_STANDARD=17 -DCMAKE_CXX_STANDARD_REQUIRED=ON', 'UNIT_TESTS': 'true', 'COMPILER': 'g++-6', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': 'b1d5781111'}),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 11", "default", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'CMAKE_OPTIONS': '-DBOOST_HANA_ENABLE_CONCEPT_CHECKS=OFF', 'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': '17ba079149'}),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 12", "default", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'CMAKE_OPTIONS': '-DBOOST_HANA_ENABLE_DEBUG_MODE=ON', 'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': '7b52009b64'}),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 13", "default", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'CMAKE_OPTIONS': '-DBOOST_HANA_ENABLE_EXCEPTIONS=OFF', 'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': 'bd307a3ec3'}),
  osx_cxx("UNIT_TESTS=true BOOST_VERSION=default CMAKE_O Job 14", "g++", packages="", buildtype="boost", xcode_version="11", environment={'CMAKE_OPTIONS': '-DBOOST_HANA_ENABLE_EXCEPTIONS=OFF', 'UNIT_TESTS': 'true', 'BOOST_VERSION': 'default', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': 'fa35e19212'}),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 15", "default", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': '1.64.0', 'DRONE_JOB_UUID': 'f1abd67035'}),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 16", "default", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': '1.65.1', 'DRONE_JOB_UUID': '1574bddb75'}),
  linux_cxx("UNIT_TESTS=true COMPILER=default Job 17", "default", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'default', 'DRONE_JOB_UUID': '0716d9708d'}),
  linux_cxx("BOOST_BUILD=true COMPILER=default BOOST_VERSI Job 18", "default", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'BOOST_BUILD': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': '9e6a55b6b4'}),
  osx_cxx("BOOST_BUILD=true BOOST_VERSION=default Job 19", "g++", packages="", buildtype="boost", xcode_version="11", environment={'BOOST_BUILD': 'true', 'BOOST_VERSION': 'default', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': 'b3f0c7f6bb'}),
  osx_cxx("DOCUMENTATION=true BOOST_VERSION=default Job 20", "g++", packages="", buildtype="boost", environment={'DOCUMENTATION': 'true', 'BOOST_VERSION': 'default', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': '91032ad7bb'}),
  linux_cxx("BENCHMARKS=true COMPILER=default BOOST_VERSIO Job 21", "default", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'CMAKE_OPTIONS': '-DCMAKE_BUILD_TYPE=Release', 'BENCHMARKS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'default', 'DRONE_JOB_UUID': '472b07b9fc'}),
  linux_cxx("UNIT_TESTS=true COMPILER=default BOOST_VERSIO Job 22", "default", packages="clang-7 valgrind", llvm_os="trusty", llvm_ver="7", buildtype="boost", environment={'UNIT_TESTS': 'true', 'COMPILER': 'default', 'BOOST_VERSION': 'trunk', 'DRONE_JOB_UUID': '12c6fc06c9'}),
  ]

# Generate pipeline for Linux platform compilers.
def linux_cxx(name, cxx, cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/droneubuntu1404:1", buildtype="boost", environment={}, stepenvironment={}, jobuuid="", privileged=False):
  environment_global = {
      "TRAVIS_BUILD_DIR": "/drone/src",

      "CXX": cxx,
      "CXXFLAGS": cxxflags,
      "PACKAGES": packages,
      "LLVM_OS": llvm_os,
      "LLVM_VER": llvm_ver
      }
  environment_global.update({'secure': 'gB1wvjk565j3O4UBGjyN44Vd8IGqcNHzkbvRdFNHp7C+C+JG2vhAeLlpiK0Zd483gdTjq9gPjIDwpwyG2UJ+yjT1kMTJvD1YNWpGcK6vOHYl1yMOwv/LBdnKn+J7i/FnoeULGRCCI2Fpp1qILhxeZgLxTxsdQaYXlAkkR0i8cgQ='})
  environment_current=environment_global
  environment_current.update(environment)

  return {
    "name": "Linux %s" % name,
    "kind": "pipeline",
    "type": "docker",
    "trigger": { "branch": [ "master","develop", "drone*", "bugfix/*", "feature/*", "fix/*", "pr/*" ] },
    "platform": {
      "os": "linux",
      "arch": arch
    },
    # Create env vars per generation arguments.
    "environment": environment_current,
    "steps": [
      {
        "name": "Everything",
        "image": image,
        "privileged" : privileged,
        "environment": stepenvironment,
        "commands": [

          "echo '==================================> SETUP'",
          "uname -a",
          # Moved to Docker
          # "apt-get -o Acquire::Retries=3 update && DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata && apt-get -o Acquire::Retries=3 install -y sudo software-properties-common wget curl apt-transport-https git make cmake apt-file sudo unzip libssl-dev build-essential autotools-dev autoconf libc++-helpers automake g++",
          # "for i in {1..3}; do apt-add-repository ppa:git-core/ppa && break || sleep 2; done",
          # "apt-get -o Acquire::Retries=3 update && apt-get -o Acquire::Retries=3 -y install git",
          "echo '==================================> PACKAGES'",
          "./.drone/linux-cxx-install.sh",

          "echo '==================================> INSTALL AND COMPILE'",
          "./.drone/%s.sh" % buildtype,
        ]
      }
    ]
  }

def windows_cxx(name, cxx="g++", cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/dronevs2019", buildtype="boost", environment={}, stepenvironment={}, privileged=False):
  environment_global = {
      "CXX": cxx,
      "CXXFLAGS": cxxflags,
      "PACKAGES": packages,
      "LLVM_OS": llvm_os,
      "LLVM_VER": llvm_ver
    }
  environment_global.update({'secure': 'gB1wvjk565j3O4UBGjyN44Vd8IGqcNHzkbvRdFNHp7C+C+JG2vhAeLlpiK0Zd483gdTjq9gPjIDwpwyG2UJ+yjT1kMTJvD1YNWpGcK6vOHYl1yMOwv/LBdnKn+J7i/FnoeULGRCCI2Fpp1qILhxeZgLxTxsdQaYXlAkkR0i8cgQ='})
  environment_current=environment_global
  environment_current.update(environment)

  return {
    "name": "Windows %s" % name,
    "kind": "pipeline",
    "type": "docker",
    "trigger": { "branch": [ "master","develop", "drone*", "bugfix/*", "feature/*", "fix/*", "pr/*" ] },
    "platform": {
      "os": "windows",
      "arch": arch
    },
    # Create env vars per generation arguments.
    "environment": environment_current,
    "steps": [
      {
        "name": "Everything",
        "image": image,
        "privileged": privileged,
        "environment": stepenvironment,
        "commands": [
          "echo '==================================> SETUP'",
          "echo '==================================> PACKAGES'",
          "bash.exe ./.drone/windows-msvc-install.sh",

          "echo '==================================> INSTALL AND COMPILE'",
          "bash.exe ./.drone/%s.sh" % buildtype,
        ]
      }
    ]
  }
def osx_cxx(name, cxx, cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/droneubuntu1404:1", osx_version="", xcode_version="", buildtype="boost", environment={}, stepenvironment={}, jobuuid="", privileged=False):
  environment_global = {
      # "TRAVIS_BUILD_DIR": "/drone/src",
      "CXX": cxx,
      "CXXFLAGS": cxxflags,
      "PACKAGES": packages,
      "LLVM_OS": llvm_os,
      "LLVM_VER": llvm_ver
      }
  environment_global.update({'secure': 'gB1wvjk565j3O4UBGjyN44Vd8IGqcNHzkbvRdFNHp7C+C+JG2vhAeLlpiK0Zd483gdTjq9gPjIDwpwyG2UJ+yjT1kMTJvD1YNWpGcK6vOHYl1yMOwv/LBdnKn+J7i/FnoeULGRCCI2Fpp1qILhxeZgLxTxsdQaYXlAkkR0i8cgQ='})
  environment_current=environment_global
  environment_current.update(environment)

  # exec runner only has step-level environment variables:
  environment_step = environment_current
  environment_step.update(stepenvironment)

  if xcode_version:
    environment_step["DEVELOPER_DIR"] = "/Applications/Xcode-" + xcode_version +  ".app/Contents/Developer"
    if not osx_version:
        if xcode_version[0:2] in [ "12","11","10"]:
            osx_version="catalina"
        elif xcode_version[0:1] in [ "9","8","7","6"]:
            osx_version="highsierra"
  else:
    osx_version="catalina"

  return {
    "name": "OSX %s" % name,
    "kind": "pipeline",
    "type": "exec",
    "trigger": { "branch": [ "master","develop", "drone*", "bugfix/*", "feature/*", "fix/*", "pr/*" ] },
    "platform": {
      "os": "darwin",
      "arch": arch
    },
    "node": {
      "os": osx_version
      },
    "steps": [
      {
        "name": "Everything",
        # "image": image,
        "privileged" : privileged,
        "environment": environment_step,
        "commands": [

          "echo '==================================> SETUP'",
          "uname -a",
          # "apt-get -o Acquire::Retries=3 update && apt-get -o Acquire::Retries=3 -y install git",
          "echo '==================================> PACKAGES'",
          "./.drone/osx-cxx-install.sh",

          "echo '==================================> INSTALL AND COMPILE'",
          "./.drone/%s.sh" % buildtype,
        ]
      }
    ]
  }

def freebsd_cxx(name, cxx, cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/droneubuntu1404:1", buildtype="boost", environment={}, stepenvironment={}, jobuuid="", privileged=False):
    pass
