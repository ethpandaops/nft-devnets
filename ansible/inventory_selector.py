import random

# Path to your inventory file
inventory_file = "./inventories/devnet-0/inventory.ini"

# Read the file
with open(inventory_file, "r") as f:
    lines = f.readlines()

# Filter lines with "ansible_host" and extract the inventory hostname (before first space or "=")
hosts_with_ansible_host = [
    line.split()[0].strip() for line in lines if "ansible_host" in line.strip()
]

# Calculate 20% of the filtered hosts
sample_size = len(hosts_with_ansible_host) // 3  # 20%

# Randomly sample 20% of the hostnames
sampled_hostnames = random.sample(hosts_with_ansible_host, sample_size)

# Save the sampled hostnames to a new file or print them
with open("sampled_hostnames.ini", "w") as f:
    f.write("\n".join(sampled_hostnames))

print(f"Selected {sample_size} hostnames written to sampled_hostnames.ini")