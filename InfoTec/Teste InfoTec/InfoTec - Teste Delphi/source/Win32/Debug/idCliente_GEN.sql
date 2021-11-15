CREATE GENERATOR id_cliente;

CREATE TRIGGER idCliente_PK for clientes
BEFORE INSERT position 0
AS
BEGIN
new.id_cliente = gen_id("id_cliente",1);
END;


