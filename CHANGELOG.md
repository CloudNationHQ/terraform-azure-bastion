# Changelog

## [4.0.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v3.2.0...v4.0.0) (2025-05-20)


### ⚠ BREAKING CHANGES

* The data structure changed, causing a recreate on existing resources.

### Features

* add type definitions ([#78](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/78)) ([1615ca4](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/1615ca419e0b1a1834a626628ab28cf8291d0a69))

## [3.2.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v3.1.0...v3.2.0) (2025-01-20)


### Features

* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#69](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/69)) ([aa647ac](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/aa647ac66fe3a7de5b3c61109fa3a4ceb751d182))
* **deps:** bump golang.org/x/crypto from 0.21.0 to 0.31.0 in /tests ([#72](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/72)) ([1e90b5f](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/1e90b5f6764ccf4a5d8da9fe9eb31d44241d1e6a))
* **deps:** bump golang.org/x/net from 0.23.0 to 0.33.0 in /tests ([#73](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/73)) ([ae2a99b](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/ae2a99b67b605a91cc83fa475be82ffc573171e3))
* remove temporary files when deployment tests fails ([#70](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/70)) ([b4c7466](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/b4c74662e549d3a4216567795c7e4fd8ff835006))

## [3.1.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v3.0.0...v3.1.0) (2024-12-09)


### Features

* add descriptions to bastion nsg rules ([#66](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/66)) ([04e9913](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/04e9913d80e7e5a6b9feaf027b54fcad1941b948))

## [3.0.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v2.4.0...v3.0.0) (2024-11-29)


### ⚠ BREAKING CHANGES

* public ip needs to be used as a seperated module.

### Features

* removed public ip from the module itself ([#64](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/64)) ([fbb0dcf](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/fbb0dcf57ba243eb20fe9c6f02c3a8740b9ccb27))

### Upgrade from v2.4.0 to v3.0.0:

- Update module reference to: `version = "~> 3.0"`
  - see example [usage](https://github.com/CloudNationHQ/terraform-azure-bastion/blob/main/examples/complete/main.tf)

## [2.4.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v2.3.0...v2.4.0) (2024-11-25)


### Features

* add zones support and fixed required ruleset ([#62](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/62)) ([412f057](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/412f0579e25fb22f926a4a516a56c7ececb0e267))

## [2.3.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v2.2.0...v2.3.0) (2024-11-12)


### Features

* enhance testing with sequential, parallel modes and flags for exceptions and skip-destroy ([#60](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/60)) ([fd372ea](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/fd372ea0bbd50cffb73f4aa34199947695fe9047))

## [2.2.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v2.1.0...v2.2.0) (2024-10-11)


### Features

* enable session recording support ([#57](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/57)) ([2a142cc](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/2a142cc79ef596f87d4eb9bcf9f93101cc01bbce))

## [2.1.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v2.0.0...v2.1.0) (2024-10-11)


### Features

* auto generated docs and refine makefile ([#55](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/55)) ([e9ea241](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/e9ea241fbf49c484ef3a98155bda3d36065e9223))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#54](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/54)) ([c9f2784](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/c9f2784abd60c2f6983f6318f4fc56052b840ef9))

## [2.0.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v1.1.0...v2.0.0) (2024-09-24)


### ⚠ BREAKING CHANGES

* Version 4 of the azurerm provider includes breaking changes.

### Features

* upgrade azurerm provider to v4 ([#52](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/52)) ([737ae52](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/737ae529fbfe0e8855e183e1727a9f063621141e))

### Upgrade from v1.1.0 to v2.0.0:

- Update module reference to: `version = "~> 2.0"`

## [1.1.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v1.0.0...v1.1.0) (2024-08-28)


### Features

* add question template ([#49](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/49)) ([00aace4](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/00aace441813c3d8ea465a3dc929fa4c8cd065b9))

## [1.0.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.11.0...v1.0.0) (2024-08-14)


### ⚠ BREAKING CHANGES

* data structure has changed due to renaming of properties and output variables.

### Features

* aligned several properties ([#46](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/46)) ([4388103](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/4388103380715033f5e3f0c513bf28e92af762e4))

### Upgrade from v0.11.0 to v1.0.0:

- Update module reference to: `version = "~> 1.0"`
- Rename properties in host object:
  - resourcegroup -> resource_group
- Rename variable:
  - resourcegroup -> resource_group
- Rename output variable:
  - subscriptionId -> subscription_id'

## [0.11.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.10.0...v0.11.0) (2024-08-14)

### Features

* added code of conduct and security documentation ([#43](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/43)) ([8a03000](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/8a03000bb9d8acfca309125a6cf54f439be7f1d9))

## [0.10.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.9.0...v0.10.0) (2024-08-13)


### Features

* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#42](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/42)) ([fc73bcd](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/fc73bcdde643b4a667a9f791e6cf068027a1b3be))
* update contribution docs ([#40](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/40)) ([c87393c](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/c87393c450ffba69b8a2a6b020f4aeb7dc6ddd7a))

## [0.9.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.8.0...v0.9.0) (2024-07-02)


### Features

* add issue template ([#37](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/37)) ([ba6c7b0](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/ba6c7b0875fd587793cd4ececd4df8140954b8f4))
* **deps:** bump github.com/Azure/azure-sdk-for-go/sdk/azidentity ([#34](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/34)) ([ff59415](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/ff59415b3452944bff29186636711717ddf2660f))
* **deps:** bump github.com/Azure/azure-sdk-for-go/sdk/azidentity ([#35](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/35)) ([c9d3a40](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/c9d3a40da7892d237342babd11fbb79cf470ae17))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#38](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/38)) ([2ac3a9f](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/2ac3a9f204c386820dc1da8b6187f6c3dcb69bb8))
* **deps:** bump github.com/hashicorp/go-getter in /tests ([#36](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/36)) ([e4c35ce](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/e4c35cec9ea623053fd9e4c9acad3e7dded37766))

## [0.8.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.7.0...v0.8.0) (2024-06-07)


### Features

* add pull request template ([#32](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/32)) ([0ac7067](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/0ac70673c2533e04a75d1e2b0f509c7427f4db69))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#31](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/31)) ([dcee679](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/dcee679040d9e071986f85c643f86822b2b7dcbe))

## [0.7.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.6.0...v0.7.0) (2024-05-16)


### Features

* add kerberos support ([#29](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/29)) ([cf71cb8](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/cf71cb8ea530d96a67bd9c138d5ee0ecb3d7afba))
* **deps:** bump github.com/Azure/azure-sdk-for-go/sdk/azidentity ([#25](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/25)) ([077af4c](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/077af4c61db33e325bcc42891ce28849d5119864))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#28](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/28)) ([984a7a2](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/984a7a2f01b6e995edf709b6f539906d40c7a74f))
* **deps:** bump github.com/hashicorp/go-getter in /tests ([#27](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/27)) ([1295b76](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/1295b76f5eea67e8d6268d54cf51715d0dbca01e))
* **deps:** bump golang.org/x/net from 0.19.0 to 0.23.0 in /tests ([#26](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/26)) ([ef61beb](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/ef61beb60e57f6b75796c09b7eace2ada8e5842c))

## [0.6.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.5.0...v0.6.0) (2024-03-19)


### Features

* add missing public ip properties and updated documentation ([#21](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/21)) ([d5ffa3a](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/d5ffa3a66b87b43922002c1cdc36c400e10d2c84))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#20](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/20)) ([2404bc0](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/2404bc0cdeb9ca64ca85937d537e3c915e5db96c))
* **deps:** bump github.com/stretchr/testify in /tests ([#18](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/18)) ([ecf9d96](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/ecf9d965206ecf3255fb72346e9446d6aee09b09))
* **deps:** bump google.golang.org/protobuf in /tests ([#19](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/19)) ([54e331c](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/54e331c74cbc269c39782108cbade62693dfe68b))

## [0.5.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.4.0...v0.5.0) (2024-02-16)


### Features

* better allignment property names ([#16](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/16)) ([9a48717](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/9a487174a71da7314cbe76c2daa658f270f68bb5))

## [0.4.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.3.0...v0.4.0) (2024-02-14)


### Features

* fix wrong nsg rule structure in examples ([#13](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/13)) ([807ddbd](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/807ddbd88c5b956e6535dad4dd9b309873b1a506))
* naming variable is optional now ([#15](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/15)) ([578403a](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/578403a63632bb32689cdfb04f0d70d125f25cc5))

## [0.3.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.2.0...v0.3.0) (2024-01-24)


### Features

* add fallback name for public ip ([#11](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/11)) ([535307b](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/535307bf3229ab27bcad7e3ce89f477230bd1e41))
* **deps:** bump github.com/Azure/azure-sdk-for-go/sdk/azidentity ([#8](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/8)) ([9710778](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/97107789709fb0f9ed6386e95c9e4c1eb41e8e04))
* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#9](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/9)) ([292287a](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/292287a7b53ec5e4e0726ef441ff49ec04e7cfb1))

## [0.2.0](https://github.com/CloudNationHQ/terraform-azure-bastion/compare/v0.1.0...v0.2.0) (2024-01-19)


### Features

* **deps:** bump github.com/gruntwork-io/terratest in /tests ([#6](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/6)) ([751fd2f](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/751fd2fd05c7fca3b0a98073b5931a514c90f96b))
* **deps:** bump golang.org/x/crypto from 0.14.0 to 0.17.0 in /tests ([#4](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/4)) ([0bb9277](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/0bb92772765fc777252cd15f3bdc548b5ba69bac))
* small refactor workflows ([#7](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/7)) ([015130e](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/015130ed2ef665abc42bc0bcfeeb70d98990f0f9))

## 0.1.0 (2023-12-09)


### Features

* add initial resources ([#1](https://github.com/CloudNationHQ/terraform-azure-bastion/issues/1)) ([a8e463a](https://github.com/CloudNationHQ/terraform-azure-bastion/commit/a8e463a9d08993a759bb552983f29370339f086b))
