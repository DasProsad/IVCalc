# CRISPR-Cas9 IVC Reaction Calculator (IVCalc)

## Overview
The **CRISPR-Cas9 IVC Reaction Calculator (IVCalc)** is a command-line tool designed to calculate reaction mix components for an *in vitro* CRISPR-Cas9 reaction. It computes the molarities of Cas9, sgRNA, and substrate DNA, ensuring accurate preparation of reaction mixtures.

## License
This program is licensed under the **GNU Affero General Public License v3.0**.

## Features
- Computes molarities of **substrate DNA, sgRNA, and Cas9 protein**
- Generates **reaction mix volumes** for assembly and *in vitro* cleavage (IVC)
- Provides **dilution recommendations** when necessary

## Installation

### Prerequisites
- UNIX-like os
- Python 3.12

### Clone the Repository
```sh
git clone https://github.com/dasprosad/ivcalc.git
cd ivcalc
```
### Installation
It will install `ivcalc` in `/usr/local/bin` ( Assuming it is in your `$PATH`)
```sh
make install
```
or, to a custom path
```sh
make install INSTALL_DIR=/path/to/custom/directory
```

## Usage
```sh
ivcalc \
    --rnp_ratio 1.5 \
    --ivc_vol 20.0 \
    --final_sub_mass 100.0 \
    --cas_mw 160.0 \
    --cas_stock 1000.0 \
    --dna_len 3.0 \
    --sub_stock 500.0 \
    --sgrna_len 0.1 \
    --sgrna_stock 100.0
```

## Command-line Arguments
| Argument | Description |
|----------|-------------|
| `--rnp_ratio` | RNP times substrate concentration |
| `--ivc_vol` | Volume of IVC reaction (uL) |
| `--final_sub_mass` | Amount of substrate DNA in ng |
| `--cas_mw` | Molecular weight of Cas protein (kDa) |
| `--cas_stock` | Stock concentration of Cas (ng/uL) |
| `--dna_len` | Length of substrate DNA (Kbp) |
| `--sub_stock` | Stock concentration of DNA substrate (ng/uL) |
| `--sgrna_len` | Length of sgRNA (Kbp) |
| `--sgrna_stock` | Stock concentration of sgRNA (ng/uL) |

## Example Output
```
Stock Cas uM: 6.25
Stock DNA uM: 0.33
Stock sgRNA uM: 62.50
IVC DNA uM: 0.5
IVC Cas uM: 0.75
IVC sgRNA uM: 1.5
...
Total Volume: 20.00 μL
```

## Contributing
Feel free to fork this repository and submit pull requests.

## Author
**Prosad Kumar Das**

## License
[GNU AGPL v3.0](https://www.gnu.org/licenses/agpl-3.0.html)
