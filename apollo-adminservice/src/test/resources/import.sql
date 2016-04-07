INSERT INTO App (AppId, Name, OwnerName, OwnerEmail) VALUES ('100003171','apollo-config-service','刘一鸣','liuym@ctrip.com');
INSERT INTO App (AppId, Name, OwnerName, OwnerEmail) VALUES ('100003172','apollo-admin-service','宋顺','song_s@ctrip.com');
INSERT INTO App (AppId, Name, OwnerName, OwnerEmail) VALUES ('100003173','apollo-portal','张乐','zhanglea@ctrip.com');
INSERT INTO App (AppId, Name, OwnerName, OwnerEmail) VALUES ('fxhermesproducer','fx-hermes-producer','梁锦华','jhliang@ctrip.com');

INSERT INTO Cluster (AppId, Name) VALUES ('100003171', 'default');
INSERT INTO Cluster (AppId, Name) VALUES ('100003171', 'cluster1');
INSERT INTO Cluster (AppId, Name) VALUES ('100003172', 'default');
INSERT INTO Cluster (AppId, Name) VALUES ('100003172', 'cluster2');
INSERT INTO Cluster (AppId, Name) VALUES ('100003173', 'default');
INSERT INTO Cluster (AppId, Name) VALUES ('100003173', 'cluster3');
INSERT INTO Cluster (AppId, Name) VALUES ('fxhermesproducer', 'default');

INSERT INTO AppNamespace (AppId, Name) VALUES ('100003171', 'application');
INSERT INTO AppNamespace (AppId, Name) VALUES ('100003172', 'application');
INSERT INTO AppNamespace (AppId, Name) VALUES ('100003173', 'application');
INSERT INTO AppNamespace (AppID, Name) VALUES ('fxhermesproducer', 'application');

INSERT INTO Namespace (Id, AppId, ClusterName, NamespaceName) VALUES (1, '100003171', 'default', 'application');
INSERT INTO Namespace (Id, AppId, ClusterName, NamespaceName) VALUES (2, 'fxhermesproducer', 'default', 'application');
INSERT INTO Namespace (Id, AppId, ClusterName, NamespaceName) VALUES (3, '100003172', 'default', 'application');
INSERT INTO Namespace (Id, AppId, ClusterName, NamespaceName) VALUES (4, '100003173', 'default', 'application');
INSERT INTO Namespace (Id, AppId, ClusterName, NamespaceName) VALUES (5, '100003171', 'default', 'application');

INSERT INTO Item (GroupId, `Key`, Value, Comment) VALUES (1, 'k1', 'v1', 'comment1');
INSERT INTO Item (GroupId, `Key`, Value, Comment) VALUES (1, 'k2', 'v2', 'comment2');
INSERT INTO Item (GroupId, `Key`, Value, Comment) VALUES (2, 'k3', 'v3', 'comment3');
INSERT INTO Item (GroupId, `Key`, Value, Comment) VALUES (5, 'k3', 'v4', 'comment4');

INSERT INTO `RELEASE` (Name, Comment, AppId, ClusterName, NamespaceName, Configurations) VALUES ('REV1','First Release','100003171', 'default', 'application', '{"k1":"v1"}');
