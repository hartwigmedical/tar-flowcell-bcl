FROM google/cloud-sdk:357.0.0

WORKDIR /root/

# add repo tools
RUN apt-get update && \
    apt-get --yes install \
    wget=1.20.1-1.1

# add non-repo tools

# add script
COPY tar_flowcell_bcl_util tar_flowcell_bcl_util
COPY tar_flowcell_bcl tar_flowcell_bcl

# final preparations
RUN chmod +x tar_flowcell_bcl_util
RUN chmod +x tar_flowcell_bcl

ENTRYPOINT ["./tar_flowcell_bcl"]