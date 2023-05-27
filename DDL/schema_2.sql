CREATE SCHEMA schema_2

CREATE TABLE schema_2.nodes
(
    node   int NULL,
    parent int NULL
);

INSERT INTO schema_2.nodes (node, parent) VALUES (1, 2);
INSERT INTO schema_2.nodes (node, parent) VALUES (3, 2);
INSERT INTO schema_2.nodes (node, parent) VALUES (6, 8);
INSERT INTO schema_2.nodes (node, parent) VALUES (9, 8);
INSERT INTO schema_2.nodes (node, parent) VALUES (2, 5);
INSERT INTO schema_2.nodes (node, parent) VALUES (8, 5);
INSERT INTO schema_2.nodes (node, parent) VALUES (5, null);

CREATE TABLE schema_2.xy
(
    X int NULL,
    Y int NULL
);

INSERT INTO schema_2.xy (X, Y) VALUES (30, 40);
INSERT INTO schema_2.xy (X, Y) VALUES (40, 30);
INSERT INTO schema_2.xy (X, Y) VALUES (20, 21);
INSERT INTO schema_2.xy (X, Y) VALUES (23, 22);
INSERT INTO schema_2.xy (X, Y) VALUES (22, 23);
INSERT INTO schema_2.xy (X, Y) VALUES (21, 20);
INSERT INTO schema_2.xy (X, Y) VALUES (25, 24);
INSERT INTO schema_2.xy (X, Y) VALUES (88, 77);
INSERT INTO schema_2.xy (X, Y) VALUES (44, 55);
INSERT INTO schema_2.xy (X, Y) VALUES (55, 44);