# Belajar Data Wrangling in Shell

Berikut adalah langkah-langkahnya:

1. Tambahkan download dataset dengan wget

    $ wget https://raw.githubusercontent.com/FaizalAddi/ShellClass/main/log

2. Convert file `US_births_1994-2014_astrology.xlsx` ke .csv

    $ in2csv US_births_1994-2014_astrology.xlsx > US_births_1994-2014_astrology.csv

3. Eksekusi `log-to-csv.sh`

    $ chmod 755 log-to-csv.sh

    $ ./log-to-csv.sh
