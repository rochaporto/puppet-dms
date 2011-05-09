# Class defining resources for CERN/IT/DMS head setups.
#
# Meaning these setups are supposed to use packages from nightly builds.
#
# == Examples
#
# All you need is to include the class:
#   include dms::head
# 
# == Authors
#
# CERN IT/GT/DMS <it-dep-gt-dms@cern.ch>
#
class dms::head {
  include dms::common

  yumrepo { 
    "lcgdm-head-etics":
      descr    => "LCGDM ETICS Unstable Repository",
      baseurl  => "http://etics-repository.cern.ch/repository/pm/volatile/repomd/name/lcgdm_head_sl5_x86_64_gcc412",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 0;
    "lcgutil-head-etics":
      descr    => "LCGUTIL ETICS Unstable Repository",
      baseurl  => "http://etics-repository.cern.ch/repository/pm/volatile/repomd/name/lcgutil_head_sl5_x86_64_gcc412",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 1;
  }
}

