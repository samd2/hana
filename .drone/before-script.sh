#!/bin/bash

if [ "$DRONE_JOB_UUID" = "b6589fc6ab" ] || [ "$DRONE_JOB_UUID" = "356a192b79" ] || [ "$DRONE_JOB_UUID" = "da4b9237ba" ] || [ "$DRONE_JOB_UUID" = "77de68daec" ] || [ "$DRONE_JOB_UUID" = "1b64538924" ] || [ "$DRONE_JOB_UUID" = "ac3478d69a" ] || [ "$DRONE_JOB_UUID" = "c1dfd96eea" ] || [ "$DRONE_JOB_UUID" = "902ba3cda1" ] || [ "$DRONE_JOB_UUID" = "fe5dbbcea5" ] || [ "$DRONE_JOB_UUID" = "0ade7c2cf9" ] || [ "$DRONE_JOB_UUID" = "b1d5781111" ] || [ "$DRONE_JOB_UUID" = "17ba079149" ] || [ "$DRONE_JOB_UUID" = "7b52009b64" ] || [ "$DRONE_JOB_UUID" = "bd307a3ec3" ] || [ "$DRONE_JOB_UUID" = "fa35e19212" ] || [ "$DRONE_JOB_UUID" = "f1abd67035" ] || [ "$DRONE_JOB_UUID" = "1574bddb75" ] || [ "$DRONE_JOB_UUID" = "0716d9708d" ] || [ "$DRONE_JOB_UUID" = "9e6a55b6b4" ] || [ "$DRONE_JOB_UUID" = "b3f0c7f6bb" ] || [ "$DRONE_JOB_UUID" = "91032ad7bb" ] || [ "$DRONE_JOB_UUID" = "472b07b9fc" ] || [ "$DRONE_JOB_UUID" = "12c6fc06c9" ] ; then
    if [[ "${BOOST_BUILD}" == "true" ]]; then
      rm -rf "${BOOST_DIR}/libs/hana"
      cp -rp ${TRAVIS_BUILD_DIR} "${BOOST_DIR}/libs/hana"
      export TRAVIS_BUILD_DIR="${BOOST_DIR}/libs/hana"
    fi

    git config --global user.name "Travis bot"
    git config --global user.email "<>"
    cd "${TRAVIS_BUILD_DIR}"
    (mkdir build && cd build && cmake .. ${CMAKE_OPTIONS})
fi

