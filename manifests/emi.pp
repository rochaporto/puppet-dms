#
class emi::common::repos {

  yumrepo { 
    "egi-trustanchors":
      descr    => "EGI trust anchors",
      baseurl  => "http://repository.egi.eu/sw/production/cas/1/current/",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 0;
  }
}

class emi2::repos {
  include emi::common::repos

  yumrepo { 
    "emi-base":
      descr    => "emi-base",
      baseurl  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/2/sl${lsbmajdistrelease}/\$basearch/base",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 0;
    "emi-updates":
      descr    => "emi-updates",
      baseurl  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/2/sl${lsbmajdistrelease}/\$basearch/updates",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 0;
    "emi-third-party":
      descr    => "emi-third-party",
      baseurl  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/2/sl${lsbmajdistrelease}/\$basearch/third-party",
      gpgcheck => 0,
      enabled  => 1,
      protect  => 0;
  }

}
