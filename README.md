# Tux Protect - Unofficial Wifree for Linux Ubuntu

![Logo](./res/icons/logo.jpg)

## Features

### Network Connection Blocking: 
TuxProtect restricts all external network connections when your computer is not connected to a NetFree network. .
### Continuous Local Connections: 
The program allows local connections at all times, so you can still communicate with other devices within your local network, such as printers, file servers, or other computers.
### Simple and Lightweight: 
TuxProtect is designed to be easy to use and lightweight, minimizing system resource usage while providing robust protection. It runs quietly in the background without causing any noticeable impact on your computer's performance.
Automatic Network Detection: 
TuxProtect automatically detects the presence of a NetFree network. Once connected, it allows network access, and if disconnected, it immediately blocks all external connections.

## Installation

```
sudo apt-get update && sudo apt-get install -y git && git -c http.sslVerify=false clone https://github.com/lo-mityaesh/tuxprotect.git && cd tuxprotect && chmod +x install.sh && sudo ./install.sh && cd .. && rm -rf tuxprotect
```
## Contributions

Contributions to TuxProtect are welcome! If you encounter any issues or have suggestions for improvements, please feel free to open an issue on the GitHub repository.

## Disclaimer

WARNING!!! This programm was tested only with Ubuntu 22.10 ! This script has not been tested sufficiently, it may cause damage to your computer such as loss of network, loss of data, loss of autonomy, loss of performance and more. No uninstall tool will be provided.
This script updates itself, its behavior is subject to change over time. 

TuxProtect is provided as-is without any warranty or guarantee. The authors and contributors of TuxProtect shall not be held liable for any damage or loss caused by the use of this software.

Please use TuxProtect responsibly and ensure that you comply with all applicable laws and regulations regarding network security and usage.

## License

This project is licensed under the [GNU General Public License v3](LICENSE). Please see the LICENSE file for more information.
