FROM ghcr.io/tom-trumper/ac-wotlk-client-data AS client-data-ind-prog

COPY *.dbc /tmp

CMD ["bash",  "-c", "source /azerothcore/apps/installer/includes/functions.sh && inst_download_client_data && cp /tmp/*.dbc $DATAPATH/dbc" ]

FROM ghcr.io/tom-trumper/ac-wotlk-worldserver AS worldserver-playerbots

COPY --chown=$DOCKER_USER:$DOCKER_USER \
    modules/mod-individual-progression/data/sql/world/base modules/mod-individual-progression/data/sql/world/base