CREATE GENERATOR GEN_CLIENTES_ID;
SET GENERATOR GEN_CLIENTES_ID TO 0;

CREATE TRIGGER TRIG_CLIENTES_AUTOINC FOR CLIENTES
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
    if (NEW.ID_CLIENTE is NULL) then NEW.ID_CLIENTE = GEN_ID(GEN_CLIENTES_ID, 1);
END