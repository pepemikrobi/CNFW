vcsa_hostname = "vcenter.sdn.lab"
#vcsa_username = "podX-admin@hector.lan"
#esxi_hostname = "podX-esxY.sdn.lab"
#esxi_datastore = "podX-esxY-ds1"

pod = X

dc1_switch_data = {
  # DC1
  /*LEAF11 = {
    name = "PODX_LEAF11"
    index = 11
    serial_port = "2X11"
    eth1 = "2X11"
    eth2 = "2X13"
    eth3 = "2X31"
    eth4 = "2X33"
  }
  LEAF12 = {
    name = "PODX_LEAF12"
    index = 12
    serial_port = "2X12"
    eth1 = "2X12"
    eth2 = "2X14"
    eth3 = "2X32"
    eth4 = "2X34"
  }
  SPINE11 = {
    name = "PODX_SPINE11"
    index = 13
    serial_port = "2X13"
    eth1 = "2X11"
    eth2 = "2X12"
    eth3 = "2X15"
    eth4 = "2X16"
  }
  SPINE12 = {
    name = "PODX_SPINE12"
    index = 14
    serial_port = "2X14"
    eth1 = "2X13"
    eth2 = "2X14"
    eth3 = "2X17"
    eth4 = "2X18"
  }
  BORDER11 = {
    name = "PODX_BORDER11"
    index = 15
    serial_port = "2X15"
    eth1 = "2X15"
    eth2 = "2X17"
    eth3 = "2X19"
    eth4 = "2X04"
  }
  BORDER12 = {
    name = "PODX_BORDER12"
    index = 16
    serial_port = "2X16"
    eth1 = "2X16"
    eth2 = "2X18"
    eth3 = "2X19"
    eth4 = "2X05"
  }*/
}

dc2_switch_data = {
  # DC2
  /*LEAF21 = {
    name = "PODX_LEAF21"
    index = 21
    serial_port = "2X21"
    eth1 = "2X21"
    eth2 = "2X23"
    eth3 = "2X41"
    eth4 = "2X43"
  }
  LEAF22 = {
    name = "PODX_LEAF22"
    index = 22
    serial_port = "2X22"
    eth1 = "2X22"
    eth2 = "2X24"
    eth3 = "2X42"
    eth4 = "2X44"
  }
  SPINE21 = {
    name = "PODX_SPINE21"
    index = 23
    serial_port = "2X23"
    eth1 = "2X21"
    eth2 = "2X22"
    eth3 = "2X25"
    eth4 = "2X26"
  }
  SPINE22 = {
    name = "PODX_SPINE22"
    index = 24
    serial_port = "2X24"
    eth1 = "2X23"
    eth2 = "2X24"
    eth3 = "2X27"
    eth4 = "2X28"
  }
  BORDER21 = {
    name = "PODX_BORDER21"
    index = 25
    serial_port = "2X25"
    eth1 = "2X25"
    eth2 = "2X27"
    eth3 = "2X29"
    eth4 = "2X04"
  }
  BORDER22 = {
    name = "PODX_BORDER22"
    index = 26
    serial_port = "2X26"
    eth1 = "2X26"
    eth2 = "2X28"
    eth3 = "2X29"
    eth4 = "2X05"
  }*/
}

server_data = {
  # DC1
  SRV11 = {
    name = "podX-srv11"
    index = 18
    ens224 = "2X31"
  }
  SRV12 = {
    name = "podX-srv12"
    index = 19
    ens224 = "2X32"
  }

  # DC2
  /*SRV21 = {
    name = "podX-srv21"
    index = 28
    ens224 = "2X41"
  }
  SRV22 = {
    name = "podX-srv22"
    index = 29
    ens224 = "2X42"
  }*/
}

portgroup_data = {
  "2X31" = "PODX_SRV11_LEAF11"
  "2X32" = "PODX_SRV12_LEAF12"
  "2X33" = "PODX_LEAF11_UNUSED"
  "2X34" = "PODX_LEAF12_UNUSED"
  "2X43" = "PODX_LEAF21_UNUSED"
  "2X44" = "PODX_LEAF22_UNUSED"
  "2X41" = "PODX_SRV21_LEAF21"
  "2X42" = "PODX_SRV22_LEAF22"

  "2X04" = "PODX_BORDER11_BORDER21"
  "2X05" = "PODX_BORDER12_BORDER22"

  "2X11" = "PODX_SPINE11_LEAF11"
  "2X12" = "PODX_SPINE11_LEAF12"
  "2X13" = "PODX_SPINE12_LEAF11"
  "2X14" = "PODX_SPINE12_LEAF12"
  "2X15" = "PODX_SPINE11_BORDER11"
  "2X16" = "PODX_SPINE11_BORDER12"
  "2X17" = "PODX_SPINE12_BORDER11"
  "2X18" = "PODX_SPINE12_BORDER12"
  "2X19" = "PODX_BORDER11_BORDER12"
  "2X29" = "PODX_BORDER21_BORDER22"

  "2X21" = "PODX_SPINE21_LEAF21"
  "2X22" = "PODX_SPINE21_LEAF22"
  "2X23" = "PODX_SPINE22_LEAF21"
  "2X24" = "PODX_SPINE22_LEAF22"
  "2X25" = "PODX_SPINE21_BORDER21"
  "2X26" = "PODX_SPINE21_BORDER22"
  "2X27" = "PODX_SPINE22_BORDER21"
  "2X28" = "PODX_SPINE22_BORDER22"

  "2X19" = "PODX_BORDER11_BORDER12"
  "2X29" = "PODX_BORDER21_BORDER22"
}

