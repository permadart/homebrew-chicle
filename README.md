# Homebrew Gum

This repository contains the Homebrew formula for Gum (Git User Manager), a command-line tool for managing multiple Git identities.

## About Gum

Gum is a platform-agnostic CLI tool that simplifies the process of switching between different Git user configurations and SSH keys. It's particularly useful for developers who work with multiple Git accounts across various services like GitHub, GitLab, and Bitbucket.

## Features

- Create SSH keys for different Git identities
- Add existing SSH keys to new identities
- Switch between Git user configurations easily
- Works with any Git hosting service
- Manages global Git configurations and SSH keys

## Installation

### Using Homebrew

You can install gum using Homebrew:

```bash
brew install permadart/gum/gum
```

### From Source

If you prefer to install from source or Homebrew is not available:

1. Ensure you have Go installed on your system.
2. Clone the repository:
   ```bash
   git clone https://github.com/permadart/gum.git
   ```
3. Navigate to the project directory:
   ```bash
   cd gum
   ```
4. Build the project:
   ```bash
   go build -o gum
   ```
5. (Optional) Move the binary to a location in your PATH:
   ```bash
   sudo mv gum /usr/local/bin/
   ```

## Usage

### Create a new SSH key and identity

```bash
gum create --alias user1 --email user@example.com --name "John Doe"
```

### Add an existing SSH key to a new identity

```bash
gum create --alias user2 --email user2@example.com --name "Jane Doe" --key ~/.ssh/id_rsa_user2
```

### Switch Git user

```bash
gum switch user1
```

### List all identities

```bash
gum list
```

## Contributing

If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on the [main Gum repository](https://github.com/permadart/gum).

## License

Gum is released under the MIT License. 

## Links

- [Main Gum Repository](https://github.com/permadart/gum)
- [Report Issues](https://github.com/permadart/gum/issues)