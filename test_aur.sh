#!/usr/bin/bash
pacman --noconfirm -Ssy curl which bash
source <(curl -s https://raw.githubusercontent.com/torokmark/assert.sh/master/assert.sh)

PACKAGE_TEST_NAME="mosh"
PACKAGE_TEST_DEPS="openssl"

# Install
./aur install --noconfirm $PACKAGE_TEST_NAME
TEST_LIST_INSTALL=$(./aur list | grep $PACKAGE_TEST_NAME)
assert_eq $TEST_LIST_INSTALL "$PACKAGE_TEST_NAME" "package ${PACKAGE_TEST_NAME} not find/installed!"

# TODO: List
TEST_LIST=$(./aur list)
# assert_contain $TEST_LIST $PACKAGE_TEST_NAME

# TODO: Deps
TEST_DEPS=$(./aur deps $PACKAGE_TEST_NAME)
# assert_contain $TEST_DEPS $PACKAGE_TEST_DEPS

# TODO: INFO
TEST_INFO=$(./aur info $PACKAGE_TEST_NAME)
# assert_contain $TEST_INFO $PACKAGE_TEST_NAME

# Remove
./aur remove --noconfirm $PACKAGE_TEST_NAME
TEST_LIST_REMOVE=$(./aur list | grep $PACKAGE_TEST_NAME)
assert_not_eq $TEST_LIST_REMOVE "$PACKAGE_TEST_NAME" "package ${PACKAGE_TEST_NAME} not removed!"
assert_eq $TEST_LIST_REMOVE "" "package ${PACKAGE_TEST_NAME} exist!"

