🖥️ Server Stats

Server Stats is a lightweight shell script designed to provide real-time system statistics on Linux servers. It delivers essential information such as CPU usage, memory consumption, system uptime, and details on top resource-intensive processes. This tool serves as a convenient utility for system administrators and can be utilized as a foundation for automation and monitoring solutions.
📋 Features

    Displays system uptime

    Shows current CPU usage

    Provides detailed memory usage (total, used, free, percentage)

    Lists top 5 processes by memory consumption

    Lists top 5 processes by CPU consumption

📂 File Description

    server-stats.sh: The main shell script that collects and displays system statistics.

▶️ Usage Instructions
Prerequisites

    Linux-based operating system

    Standard Unix utilities: top, uptime, free (commonly pre-installed)

    bash shell

Steps

    Grant execute permission to the script:

chmod +x server-stats.sh

Run the script:

    ./server-stats.sh

🔧 How It Works

The script gathers live system data by executing commands such as:

    uptime to fetch system uptime

    top in batch mode to get CPU and process stats

    free to check memory usage

It then formats and presents this data clearly in the terminal.
🛠️ Customization & Integration

    The script is designed to be easily extended or integrated into larger monitoring or automation workflows.

    You can modify thresholds or output formatting as needed.

⚠️ Limitations

    Intended for Linux systems only.

    Requires the presence of basic system utilities.

    Not designed for Windows or non-Unix platforms.
