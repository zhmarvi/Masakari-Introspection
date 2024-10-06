# # Copyright(c) 2024 Rackspace Technology
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Install virt-customize tool for image file modification
sudo apt update -y && sudo apt install libguestfs-tools -y
# Pull latest Ubuntu cloud image - Ubuntu 24.04 (Noble Numbat)
wget https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img
# Install QEMU-Guest-Agent into the qcow2 image. Additional packages can be specified by separating with a comma.
sudo virt-customize -a noble-server-cloudimg-amd64.img --install qemu-guest-agent
# Update all apt packages
sudo virt-customize -a noble-server-cloudimg-amd64.img --update
