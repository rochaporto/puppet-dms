#
class dms::nightlies::repo {
  include emi2::repos

  $rhel_version = $operatingsystemrelease ? {
	/.*6\..*/ => "6",
        default   => "5",
  }

  yumrepo { 
    "lcgdm-nightlies":
      descr    => "lcgdm-nightlies",
      baseurl  => $rhel_version ? {
	"6" => "http://etics-repository.cern.ch/repository/pm/volatile/repomd/name/emi2_lcgdm_head_epel_sl6_x86_64_gcc446EPEL",
        "5" => "http://etics-repository.cern.ch/repository/pm/volatile/repomd/name/emi2_lcgdm_head_epel_sl5_x86_64_gcc412EPEL"
      },
      gpgcheck => 0,
      enabled  => 1,
      protect  => 1;
  }

}
