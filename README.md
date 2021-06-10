
# munpr

<!-- badges: start -->
<!-- badges: end -->

The goal of munpr is to be a data-package with data from municpalities of Paraná State in Brazil.

## Installation

You can install the released version of munpr with:

``` r
install_github("abreums/munpr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(munpr)
munpr
# A tibble: 399 x 3
#   CD_MUN  NM_MUN              AREA_KM2
#    <chr>   <chr>                  <dbl>
# 1 4100103 Abatiá                  229.
# 2 4100202 Adrianópolis           1349.
# 3 4100301 Agudos do Sul           192.
# 4 4100400 Almirante Tamandaré     195.
# 5 4100459 Altamira do Paraná      387.
# 6 4100509 Altônia                 662.
# 7 4100608 Alto Paraná             408.
# 8 4100707 Alto Piquiri            448.
# 9 4100806 Alvorada do Sul         424.
# 10 4100905 Amaporã                 385.
#  … with 389 more rows
```

