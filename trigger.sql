CREATE OR REPLACE FUNCTION ValidaDadosConsulta() returns trigger as $$

declare
pac_row record;
espec_row record;

begin
RAISE NOTICE 'Escreva sua mensagem aqui';
RETURN NEW;

END;
$$ LANGUAGE plpgsql;

create TRIGGER ValidaDadosConsulta
BEFORE INSERT OR UPDATE ON consultas
FOR EACH ROW
EXECUTE PROCEDURE ValidaDadosConsulta();