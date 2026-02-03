FROM rocker/shiny:4.0.5

RUN apt-get update && apt-get install -y \
    libgdal-dev libproj-dev libgeos-dev libudunits2-dev \
    libssl-dev libxml2-dev gdal-bin && apt-get clean

RUN R -e "install.packages(c('shinydashboard', 'shinydashboardPlus', 'rmarkdown', 'pyramid', 'ggplot2', 'dplyr', 'gdalUtils', 'rgdal', 'sp', 'treemap', 'forecast', 'tseries', 'tidyverse', 'viridis', 'patchwork', 'circlize', 'qcc'), repos='https://packagemanager.rstudio.com/cran/2021-03-31')"

# --- CONFIGURAÇÃO DA PASTA CORRETA ---
RUN mkdir -p /srv/shiny-server/sabeis_pcdt
COPY . /srv/shiny-server/sabeis_pcdt/
RUN chown -R shiny:shiny /srv/shiny-server

CMD ["/usr/bin/shiny-server"]