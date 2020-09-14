# MIP validator
[![Gem](https://img.shields.io/gem/v/mip_validator.svg?style=flat)](http://rubygems.org/gems/mip_validator "View this project in Rubygems")


## Validation rules

### Mandatory fields

- mip or mccp
- title
- author
- status
- created

### Optional fields

- discussions-to
- layer
- replaces
- requires
- resolution
- review-period-end
- superseded-by
- updated

### Mandatory values

- `status` must be 'WIP', 'Proposed', 'Approved', 'Implemented', or 'Rejected'
## Prerequisite

- ruby

## Setup

```
gem install mip_validator
```

## Usage (command line)

```ruby
mip_validator INPUT_FILES
```

## Usage (as a lib)

```ruby
require 'mip_validator

MipValidator::Runner.run
```

### Example

```
$mip_validator  ~/src/MIPs/MIPS/*[0-9].md

total:1, valid:1, invalid:0, errors:0
	statuses: [["Implemented", 1]]

```

## Running tests

```
bundle exec rspec
```

## Releasing new gem

```
gem bump --version patch|minor|major
bundle exec rake release
```