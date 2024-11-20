# Assignment Submission Automation Script

This repository contains a shell script, `submit_assignment.sh`, designed to automate the process of submitting assignments to the **IC DevOps Batch 3** repository.

---

## 📄 Script Overview

The script simplifies and automates the following steps:

1. Fork the target repository.
2. Clone the forked repository locally.
3. Set the upstream remote to the original repository.
4. Create a new branch with the name `<Your Name>-<IC_Student_ID>`.
5. Create a directory under the designated assignment folder (`<assignment_folder>`).
6. Add `readme.md` and `.gitignore` files in the directory.
7. Upload assignment content from a local directory to the repository.
8. Commit and push the changes to the forked repository.
9. Remind you to create a pull request or optionally create it automatically using GitHub CLI.

---

## 🚀 Features

- **Automated Directory Structure**: Creates a directory using your name and IC Student ID.
- **Customizable Files**: Generates a `readme.md` with submission details and a `.gitignore` file.
- **Streamlined Git Operations**: Automates branch creation, file uploads, commits, and pushes.
- **Pull Request Reminder**: Notifies you to create a pull request or optionally automates it.

---

## 🛠️ Prerequisites

1. **Git**: Installed and configured on your system.
2. **GitHub CLI** (Optional): Installed for automating pull request creation.
3. **Forked Repository**: Ensure you've forked the [IC DevOps Batch 3 repository](https://github.com/IC-DevOps-Career-Path/ic-devops-batch3.git) to your GitHub account.
4. **Script Configuration**: Update the script with your details and paths before running.

---

## 📂 Directory Structure Created by the Script


---

## 📋 How to Use

1. **Edit the Script**:
   - Replace placeholders like `<Your Forked Repo URL>`, `<Your Name>`, `<IC_Student_ID>`, `<assignment_folder>`, and `<path_to_assignment_files>` with actual values.

2. **Make the Script Executable**:
   ```bash
   chmod +x submit_assignment.sh
3. **Run the Script**
    ```bash
    ./submit_assignment.sh
