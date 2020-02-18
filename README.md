# CrFetch

A simple fetch program to print your system details for that sweet /g/ street cred

The idea is for it to work much like NeoFetch

## Installation

``` sh
$ shards && cake # => ./bin/crfetch
```

## Usage

After making with cake run the binary
``` sh
$ ./bin/crfetch
```

You can create an alias for this so it's easier to access

The idea is that it'll work like this to specify what you want to output

``` sh
$ crfetch -c -i -cc
```

## Development

Follow install instructions.

Make sure to run tests:

``` sh
$ crystal spec
```

All tests should pass before developing. If tests do not pass make sure to look
at the log and figure out why, if it's a bug or a feature that you're wanting then
make an issue and if you want to then make a pull request for it.

## Contributing

1. Fork it (<https://github.com/materialfuture/crfetch/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Konstantine](https://github.com/materialfuture) - creator and maintainer

## Notes

Look into turning the lookup for system info into a Library after completing the
basic version

## Todo

### Needs
- [ ] Get Operating System/Distro for all main machine types
- [ ] Get CPU Specs including number of cores (logical and physical)
- [ ] Get Memory; Total, Taken, Available
- [ ] Get GPU, Brand, VRAM, etc.
- [ ] Get HDD/SSD info, 
### Extras
- [ ] Get Shell used (fish, zsh, bash, etc)
- [ ] Get Packages installed via whatever package manager
- [ ] CPU temperatures, speed, etc.

### QOL
- [x] Add Shell shard to make shell commands easier to execute
- [ ] Integrate Admiral Shard to have flags and arguments
- [ ] Integrate the tablo (or other) Shard to cleanup output
- [ ] Break out MacOS commands via grep or awk
