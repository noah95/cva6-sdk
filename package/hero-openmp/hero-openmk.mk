################################################################################
#
# hero-openmp
#
################################################################################

HERO_OPENMP_VERSION = 0.1
HERO_OPENMP_SITE_METHOD = local
HERO_OPENMP_SITE = /home/huettern/git/llvm-project-iis/openmp
HERO_OPENMP_INSTALL_STAGING = YES
HERO_OPENMP_INSTALL_TARGET = YES
HERO_OPENMP_LICENSE = MIT
HERO_OPENMP_LICENSE_FILES = LICENSE.txt
HERO_OPENMP_DEPENDENCIES = elfutils libffi

HERO_OPENMP_CONF_OPTS = -DCMAKE_BUILD_TYPE=Release -DLIBOMPTARGET_LLVM_INCLUDE_DIRS=/home/huettern/git/llvm-project-iis/install-release/include/llvm
HERO_OPENMP_CONF_ENV = HERO_DEV_INC_DIR=/home/huettern/git/msc/sw/hero/libherodev/inc

$(eval $(cmake-package))
