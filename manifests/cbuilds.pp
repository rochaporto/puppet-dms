class dms::cbuilds::repo {

  yumrepo {
    "dms-cbuilds":
      descr    => "dms-cbuilds",
      baseurl  => "http://grid-deployment.web.cern.ch/grid-deployment/dms/lcgdm/repos/el${lsbmajdistrelease}/\$basearch",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 1;
  }
  
}
