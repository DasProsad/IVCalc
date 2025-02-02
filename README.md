# ✂️🧬 CRISPR-Cas9 IVC Reaction Calculator (IVCalc)

## Overview
The **CRISPR-Cas9 IVC Reaction Calculator (IVCalc)** is a command-line tool designed to calculate reaction mix components for an *in vitro* CRISPR-Cas9 reaction. It computes the molarities of Cas9, sgRNA, and substrate DNA, ensuring accurate preparation of reaction mixtures.

## License
This program is licensed under the **GNU Affero General Public License v3.0**.

## Features
- Computes molarities of **substrate DNA, sgRNA, and Cas9 protein**
- Generates **reaction mix volumes** for assembly and *in vitro* cleavage (IVC)
- Provides **dilution recommendations** when necessary

## Installation

### 0️⃣ Prerequisites
- UNIX-like os
- Python 3.12

### 1️⃣ Clone the Repository
```sh
git clone https://github.com/dasprosad/ivcalc.git
cd ivcalc
```
### 2️⃣ Install
It will install `ivcalc` in `/usr/local/bin` ( Assuming it is in your `$PATH`)
```sh
make install
```
or, to a custom path
```sh
make install INSTALL_DIR=/path/to/custom/directory
```

## 🏁 Usage
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

## 🖥️ Command-line Arguments
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
Stock Cas uM:  6250.0
Stock DNA uM:  0.2525124993687188
Stock sgRNA uM:  2.589399000491986
IVC DNA uM:  0.0025251249936871878
IVC Cas uM : 0.0037876874905307814
IVC sgRNA uM:  0.007575374981061563
Assembly Cas uM 0.03787687490530781

Cas volume required for assembly is less than 0.5 uL: 0.0001 uL
Dilution of the stock is required!

Dilution of Cas Protein:
----------------------------------------
     10X rCutSmart Buffer:   1.00 μL
           Cas from stock:   0.00 μL
       Nuclease-free dH2O:   9.00 μL
----------------------------------------
             Total Volume:  10.00 μL


RNP Assembly Reaction Components:
----------------------------------------
     10X rCutSmart Buffer:   1.00 μL
        Cas from Dilution:   1.00 μL
                    sgRNA:   0.29 μL
       Nuclease-free dH2O:   7.71 μL
----------------------------------------
             Total Volume:  10.00 μL


IVC Reaction Components:
----------------------------------------
     10X rCutSmart Buffer:   2.00 μL
            Substrate DNA:   0.20 μL
   RNP from Assembly rxn.:   2.00 μL
       Nuclease-free dH2O:  15.80 μL
----------------------------------------
             Total Volume:  20.00 μL
```

## Contributing
Feel free to fork this repository and submit pull requests.

## 🧌 Author
**Prosad Kumar Das**

## 🪨 License
[GNU AGPL v3.0](https://www.gnu.org/licenses/agpl-3.0.html)
