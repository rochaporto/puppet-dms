#
class dms::emi2::repos {

  yumrepo { 
    "egi-trustanchors":
      descr    => "EGI trust anchors",
      baseurl  => "http://repository.egi.eu/sw/production/cas/1/current/",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 0;
  }

  yumrepo { 
    "emi2-base":
      descr    => "EMI 2 base",
      baseurl  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/2/sl${lsbmajdistrelease}/\$basearch/base",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 0;
    "emi2-updates":
      descr    => "EMI 2 updates",
      baseurl  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/2/sl${lsbmajdistrelease}/\$basearch/updates",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 0;
    "emi2-third-party":
      descr    => "EMI 2 third-party",
      baseurl  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/2/sl${lsbmajdistrelease}/\$basearch/third-party",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 0;
  }

}
