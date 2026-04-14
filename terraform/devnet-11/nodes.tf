########################################################################################
#                                    NODE DEFINITIONS
#
# Define your fleet as a list of node entries. Each entry supports:
#
#   Required:
#     - name            : Node type (e.g., "lighthouse-geth", "bootnode")
#     - count           : Number of instances
#     - cloud           : "digitalocean" or "hetzner"
#
#   Optional:
#     - validator_start : First validator index (default: 0)
#     - validator_end   : Last validator index (default: 0)
#     - size            : Instance size override (provider-specific)
#     - region          : Region override (digitalocean) or location (hetzner)
#     - supernode       : Force supernode=true/false (auto-detected from name)
#
# Examples:
#   { name = "bootnode", count = 1, cloud = "digitalocean" }
#   { name = "lighthouse-geth", count = 2, cloud = "hetzner", validator_start = 0, validator_end = 200 }
#   { name = "mev-relay", count = 1, cloud = "hetzner", size = "ccx53" }
#
########################################################################################

variable "nodes" {
  description = "List of node definitions for the devnet"
  default = [
    { name = "bootnode", count = 1, cloud = "digitalocean", region = "ams3" },
    { name = "mev-relay", count = 1, cloud = "digitalocean", size = "m3-8vcpu-64gb" },

    { name = "lighthouse-geth", count = 2, cloud = "digitalocean", validator_start = 0, validator_end = 16, region = "nyc1" },
    { name = "lighthouse-besu", count = 2, cloud = "digitalocean", validator_start = 16, validator_end = 32, region = "ams3" },
    { name = "lighthouse-nethermind", count = 2, cloud = "digitalocean", validator_start = 32, validator_end = 48, region = "sgp1" },
    { name = "lighthouse-nimbusel", count = 1, cloud = "digitalocean", validator_start = 48, validator_end = 64 },
    { name = "lighthouse-erigon", count = 2, cloud = "digitalocean", validator_start = 64, validator_end = 80 },
    { name = "lighthouse-reth", count = 2, cloud = "digitalocean", validator_start = 80, validator_end = 96, region = "lon1" },

    { name = "prysm-geth", count = 2, cloud = "digitalocean", validator_start = 96, validator_end = 112, region = "nyc3" },
    { name = "prysm-besu", count = 2, cloud = "digitalocean", validator_start = 112, validator_end = 128, region = "ams3" },
    { name = "prysm-nethermind", count = 2, cloud = "digitalocean", validator_start = 128, validator_end = 144, region = "ams3" },
    { name = "prysm-nimbusel", count = 1, cloud = "digitalocean", validator_start = 144, validator_end = 160 },
    { name = "prysm-erigon", count = 2, cloud = "digitalocean", validator_start = 160, validator_end = 176 },
    { name = "prysm-reth", count = 2, cloud = "digitalocean", validator_start = 176, validator_end = 192, region = "fra1" },

    { name = "lodestar-geth", count = 2, cloud = "digitalocean", validator_start = 192, validator_end = 208, region = "tor1" },
    { name = "lodestar-nethermind", count = 2, cloud = "digitalocean", validator_start = 208, validator_end = 224, region = "blr1" },
    { name = "lodestar-besu", count = 2, cloud = "digitalocean", validator_start = 224, validator_end = 240, region = "blr1" },
    { name = "lodestar-nimbusel", count = 1, cloud = "digitalocean", validator_start = 240, validator_end = 256 },
    { name = "lodestar-erigon", count = 2, cloud = "digitalocean", validator_start = 256, validator_end = 272 },
    { name = "lodestar-reth", count = 2, cloud = "digitalocean", validator_start = 272, validator_end = 288, region = "blr1" },

    { name = "nimbus-geth", count = 2, cloud = "digitalocean", validator_start = 288, validator_end = 304, region = "sfo3" },
    { name = "nimbus-besu", count = 2, cloud = "digitalocean", validator_start = 304, validator_end = 320, region = "syd1" },
    { name = "nimbus-nethermind", count = 2, cloud = "digitalocean", validator_start = 320, validator_end = 336, region = "syd1" },
    { name = "nimbus-nimbusel", count = 1, cloud = "digitalocean", validator_start = 336, validator_end = 352 },
    { name = "nimbus-erigon", count = 2, cloud = "digitalocean", validator_start = 352, validator_end = 368 },
    { name = "nimbus-reth", count = 2, cloud = "digitalocean", validator_start = 368, validator_end = 384, region = "blr1" },

    { name = "teku-geth", count = 2, cloud = "digitalocean", validator_start = 384, validator_end = 400, region = "fra1" },
    { name = "teku-besu", count = 2, cloud = "digitalocean", validator_start = 400, validator_end = 416, region = "syd1" },
    { name = "teku-nethermind", count = 2, cloud = "digitalocean", validator_start = 416, validator_end = 432, region = "ams3" },
    { name = "teku-nimbusel", count = 1, cloud = "digitalocean", validator_start = 432, validator_end = 448 },
    { name = "teku-erigon", count = 2, cloud = "digitalocean", validator_start = 448, validator_end = 464, region = "blr1" },
    { name = "teku-reth", count = 2, cloud = "digitalocean", validator_start = 464, validator_end = 480, region = "syd1" },

    { name = "grandine-geth", count = 2, cloud = "digitalocean", validator_start = 480, validator_end = 496, region = "fra1" },
    { name = "grandine-besu", count = 2, cloud = "digitalocean", validator_start = 496, validator_end = 512, region = "syd1" },
    { name = "grandine-nethermind", count = 2, cloud = "digitalocean", validator_start = 512, validator_end = 528, region = "nyc1" },
    { name = "grandine-nimbusel", count = 1, cloud = "digitalocean", validator_start = 528, validator_end = 544 },
    { name = "grandine-erigon", count = 2, cloud = "digitalocean", validator_start = 544, validator_end = 560 },
    { name = "grandine-reth", count = 2, cloud = "digitalocean", validator_start = 560, validator_end = 576, region = "blr1" },
  ]
}
