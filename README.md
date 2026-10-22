
# Linux User & Permission Management

A beginner-friendly Linux administration project demonstrating user
identification, group inspection, file permissions, and Bash automation.

## Features

- Displays current user and account IDs
- Inspects group membership
- Lists file permissions and ownership
- Applies predefined permissions to sample files
- Verifies permissions using `stat`
- Automates repetitive checks with Bash

## Technologies

- Ubuntu / Linux
- Bash scripting
- Linux file permissions
- Git and GitHub

## Project Structure

```text
linux-user-permission-management/
├── scripts/
│   └── permission_manager.sh
├── test-data/
│   ├── public.txt
│   └── secret.txt
├── README.md
└── .gitignore
```

## Run the Project

```bash
chmod +x scripts/permission_manager.sh
./scripts/permission_manager.sh
```

## Permissions Demonstrated

- `644`: Owner can read and write; group and others can read.
- `600`: Only the owner can read and write.

## Future Improvements

- Create and manage test users in a disposable Linux environment
- Automate group membership checks
- Add permission audit reports
- Detect files with overly broad permissions

## Author

DevOps learning project.
