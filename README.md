# Homebrew Gum

This repository contains the Homebrew formula for Gum (Git User Manager), a command-line tool for managing multiple Git identities.

## About Gum

Gum is a platform-agnostic CLI tool that simplifies the process of switching between different Git user configurations and SSH keys. It's particularly useful for developers who work with multiple Git accounts across various services like GitHub, GitLab, and Bitbucket.

### Features

- Create and manage multiple Git identities with easy-to-remember aliases
- Quickly switch between Git configurations
- Automatic SSH key management
- Works with any Git hosting service

## Installation

You can install Gum using Homebrew:

```bash
brew install permadart/gum/gum
```

## Usage

After installation, you can use Gum with the following commands:

### Create a new Git identity

```bash
gum create --alias work --email work@example.com --name "John Doe"
```

### Switch to a Git identity

```bash
gum switch work
```

### List all stored Git identities

```bash
gum list
```

## Updating

To update Gum to the latest version:

```bash
brew update
brew upgrade gum
```

## Uninstallation

To uninstall Gum:

```bash
brew uninstall gum
```

## Contributing

If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on the [main Gum repository](https://github.com/permadart/gum).

## License

Gum is released under the MIT License. See the LICENSE file in the main repository for more details.

## Links

- [Main Gum Repository](https://github.com/permadart/gum)
- [Report Issues](https://github.com/permadart/gum/issues)