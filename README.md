![Standard Notes Extension Repository](../assets/standardnotes.png?raw=true)

## Standard Notes Extensions - Self-Hosted Repository
Host Standard Notes extensions on your own server. This utility parses most of the open-source extensions available from original repository as well as from other authors and builds an extensions repository which then can be plugged directly into Standard Notes Web/Desktop Clients. (https://standardnotes.org/)

Extensions are listed as YAML in the `\extensions` sub-directory, pull a request if you'd like to add yours.

### Requirements
* Docker
	
### Demo
<p align="center">
	<img alt="Standard Notes Extension Repository Demo" src="https://github.com/iganeshk/standardnotes-extensions/raw/assets/standardnotes_demo.gif" width="80%" />
</p>

### Usage

* Clone this repository:

```bash
$ git clone https://github.com/iganeshk/standardnotes-extensions.git
$ cd standardnotes-extensions
```

* Use the env.sample to create a .env file for your environment variables. The utility will automatically load these when it starts.

```
# Sample ENV setup Variables (YAML)
# Copy this file and update as needed.
#
#   $ cp env.sample .env
#
# Do not include this new file in source control
# Github Credentials
# Generate your token here: https://github.com/settings/tokens
# No additional permission required, this is just to avoid github api rate limits
#

domain: https://your-domain.com/extensions

github:
  username: USERNAME
  token: TOKEN

```

* Run build.sh to build docker image:

```bash
$ ./build.sh
```
* Docker image `stdnbs-ext:latest` will be generated.
* Run docker in your machine
```bash
$ docker run --name stdnbsext -d -p 80:80 stdnbs-ext:latest
```

### Acknowledgments
* This project was adapted originally from https://github.com/JokerQyou/snextensions
* Check out https://github.com/jonhadfield/awesome-standard-notes for more Standard Notes stuff!
* Authors of custom themes and extensions

