CREATE EXTENSION pg_protobuf;

SELECT protobuf_decode(null);

SELECT protobuf_decode('garbage' :: bytea);

SELECT protobuf_decode(E'\\x0a0365617810321880022202100f' :: bytea);

SELECT protobuf_decode(E'\\x0a07616669736b6f6e10191880082a060a0200011064' :: bytea);

SELECT protobuf_get_integer(null, 1);

SELECT protobuf_get_integer(E'\\x0a07616669736b6f6e10191880082a060a0200011064' :: bytea, 1);

SELECT protobuf_get_integer(E'\\x0a07616669736b6f6e10191880082a060a0200011064' :: bytea, 2);

SELECT protobuf_get_integer(E'\\x0a07616669736b6f6e10191880082a060a0200011064' :: bytea, 3);

SELECT protobuf_get_bytes(null, 1);

SELECT protobuf_get_bytes(E'\\x0a0365617810321880022202100f' :: bytea, 1);

SELECT protobuf_get_bytes(E'\\x0a0365617810321880022202100f' :: bytea, 4);

SELECT protobuf_get_bytes(E'\\x0a0365617810321880022202100f' :: bytea, 5);

SELECT protobuf_get_bytes(E'\\x0a07616669736b6f6e10191880082a060a0200011064' :: bytea, 1);

SELECT protobuf_get_bytes(E'\\x0a07616669736b6f6e10191880082a060a0200011064' :: bytea, 4);

SELECT protobuf_get_bytes(E'\\x0a07616669736b6f6e10191880082a060a0200011064' :: bytea, 5);

SELECT protobuf_get_string(E'\\x0a0365617810321880022202100f' :: bytea, 1);

SELECT protobuf_get_string(E'\\x0a07616669736b6f6e10191880082a060a0200011064' :: bytea, 1);

DROP EXTENSION pg_protobuf;
