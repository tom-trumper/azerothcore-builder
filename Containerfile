FROM ghcr.io/tom-trumper/ac-wotlk-client-data

COPY *.dbc /tmp

CMD ["bash",  "-c", "source /azerothcore/apps/installer/includes/functions.sh && inst_download_client_data && cp /tmp/*.dbc $DATAPATH/dbc" ]
