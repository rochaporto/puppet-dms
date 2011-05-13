# Class defining common resources for CERN/IT/DMS setups.
#
# == Examples
#
# All you need is to include the class:
#   include dms::common
#
# == Authors
#
# CERN IT/GT/DMS <it-dep-gt-dms@cern.ch>
#
class dms::common {

  package { "yum-protectbase": }

  package { "lcgdm-libs": require => Package["yum-protectbase"] }

  yumrepo {
    "nfsv41":
      descr    => "Scientific Linux pNFS enabled kernel",
      baseurl  => "https://grid-deployment.web.cern.ch/grid-deployment/dms/yum/sl5/nfs41",
      gpgcheck => 0,
      enabled  => 1;
  }
}
