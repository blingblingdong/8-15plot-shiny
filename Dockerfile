FROM rocker/shiny:4.3.1
RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('shinythemes')"
RUN R -e "install.packages(c('ggforce', 'shinyjs', 'ggdark', 'ggthemes', 'shinydashboard', 'DT', 'markdown'), repos='http://cran.rstudio.com/')"
COPY app.R /srv/shiny-server/
COPY uuu.html /srv/shiny-server/
EXPOSE 3838
CMD ["/usr/bin/shiny-server"]
