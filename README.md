<p align="center">
  <h2 align="center">📋 Dotful</h2>
</p>

<p align="center">
	Dotfiles manager written in POSIX shell 
</p>

<p align="center">
	<a href="https://github.com/pocco81/dotful/stargazers">
		<img alt="Stars" src="https://img.shields.io/github/stars/pocco81/dotful?style=for-the-badge&logo=starship&color=C9CBFF&logoColor=D9E0EE&labelColor=302D41"></a>
	<a href="https://github.com/pocco81/dotful/issues">
		<img alt="Issues" src="https://img.shields.io/github/issues/pocco81/dotful?style=for-the-badge&logo=bilibili&color=F5E0DC&logoColor=D9E0EE&labelColor=302D41"></a>
	<a href="https://github.com/pocco81/dotful">
		<img alt="Repo Size" src="https://img.shields.io/github/repo-size/pocco81/dotful?color=%23DDB6F2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=302D41"/></a>
</p>

&nbsp;

<p align="center">
	It is a <a href="https://github.com/pocco81/dotful/blob/main/dotful">single script</a> that only depends on <code>ls</code>, <code>ln</code>, <code>cp</code> and <code>mkdir</code>, which are basic core utilities.
	It manages dotfiles through profiles, which are directories that store the actual dotfiles. There is a local database (plain text file) that stores each entry's destination, alias and their parent profile.
</p>

### Usage

```shell
# this command provides you with everything you need to know
$ dotful --help
```

But the short TL;DR is:
```
$ dotful add my_file  # adds 'my_file' to the default profile
$ dotful install     # installs the entire profile
$ dotful status      # checks the status of each file in the profile and their destinations
```

The tool may be configured through either environment variables or CLI options.

&nbsp;

### Bootstrapping

The following one-liner will download `dotful` and install it under `/usr/local/bin` (requires `sudo` privileges):

```shell
sudo sh -c 'curl https://raw.githubusercontent.com/pocco81/dotful/main/dotful -o /tmp/dotful && chmod +x /tmp/dotful && install /tmp/dotful /usr/local/bin && rm /tmp/dotful'
```
> Note: to uninstall it just run `sudo rm /usr/local/bin/dotful`

&nbsp;

### Development and Testing

Feel free to `git clone https://github.com/pocco81/dotful.git`. There is a makefile that provides the following targets:

1.	`install`: installs `dotful` under `$(BIN)`.
2. `uninstall`: removes `$(BIN)/dotful`.
3. `playground`: creates a safe testing environment inside of `$(PL)` and provides instructions on how to use `dotful` within it.

Default parameters:
- `BIN` = `/usr/local/bin`
- `PL` = `/tmp/_home`
