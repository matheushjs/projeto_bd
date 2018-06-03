# Important
Every table with SERIAL or BIGSERIAL column types must be brand-new (i.e. the autoincrementing counter must be currently on 1) in order to FOREIGN KEYS pointing to SERIAL/BIGSERIAL columns work.
