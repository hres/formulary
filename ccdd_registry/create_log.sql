-- Create change log

CREATE SCHEMA logging;

CREATE TABLE logging.t_history (

        id                 serial,
        tstamp                      timestamp       DEFAULT now(),
        schema_name           text,
        table_name                  text,
        operation                 text,
        who             text            DEFAULT current_user,
        new_val                   json,
        old_val                    json
);