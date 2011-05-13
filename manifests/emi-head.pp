# Class defining resources for CERN/IT/DMS unstable setups.
#
# Meaning these setups are supposed to use packages which are experimental
# or still under certification.
#
# == Examples
#
# All you need is to include the class:
#   include dms::unstable
#
# == Authors
#
# CERN IT/GT/DMS <it-dep-gt-dms@cern.ch>
#
class dms::emi::head {
  include dms::common

  package { "yum-priorities": ensure => present, }

  yumrepo { 
    "lcgdm-head-emi-etics":
      descr    => "LCGDM ETICS Head Repository",
      baseurl  => "http://etics-repository.cern.ch/repository/pm/volatile/repomd/name/emi_lcgdm_head_sl5_x86_64_gcc412EPEL",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 1;
    "lcgutil-head-emi-etics":
      descr    => "LCGUTIL ETICS Head Repository",
      baseurl  => "http://etics-repository.cern.ch/repository/pm/volatile/repomd/name/emi_lcgutil_head_sl5_x86_64_gcc412EPEL",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 1;
    "emi-base":
      descr    => "EMI base",
      baseurl  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/1/sl5/\$basearch/base",
      gpgcheck => 0,
      enabled  => 1,
      priority => 45,
      protect  => 0;
    "emi-third-party":
      descr    => "EMI third-party",
      baseurl  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/1/sl5/\$basearch/third-party",
      gpgcheck => 0,
      enabled  => 1,
      priority => 45,
      protect  => 0;
    "emi-updates":
      descr    => "EMI updates",
      baseurl  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/1/sl5/\$basearch/third-party",
      gpgcheck => 0,
      enabled  => 1,
      priority => 45,
      protect  => 0;
    "egi-trustanchors":
      descr    => "EGI trust anchors",
      baseurl  => "http://repository.egi.eu/sw/production/cas/1/current/",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 0;
  }

}
