select f.cpf, f.nome, f.cargo, opc.inicioCarreira, datas.dataInicio, datas.dataFim from funcionario f join (
	select op.cpfOpCamera as cpf, op.data as data, fc.dataInicio as dataInicio, fc.dataFim as dataFim 
		from fotografoCruzeiro op join festaNoCruzeiro fc 
			on op.IMOfesta = fc.IMO and op.dataFesta = fc.dataInicio 
			where '2012-06-24'::date < fc.dataInicio or '2007-11-29'::date > fc.dataFim
		union
	select op.cpfOpCamera as cpf, op.data as data, fc.dataInicio as dataInicio, fc.dataFim as dataFim 
		from cinegrafistaCruzeiro op join festaNoCruzeiro fc 
			on op.IMOfesta = fc.IMO and op.dataFesta = fc.dataInicio 
			where '2012-06-24'::date < fc.dataInicio or '2007-11-29'::date > fc.dataFim
		union
	select op.cpfOpCamera as cpf, op.data as data, fp.dataInicio as dataInicio, fp.dataFim as dataFim 
		from opParque op join festaNoParque fp
			on op.cnpjParque = fp.cnpjParque and op.dataInicioParque = fp.dataInicio 
			where '2012-06-24'::date < fp.dataInicio or '2007-11-29'::date > fp.dataFim
) as datas on f.cpf in (datas.cpf) join opCamera opc on f.cpf = opc.cpf;

select nome, datacriacao, estilomusical, tipo from banda where (nome, datacriacao) not in 
	(select nomebanda, datacriacaobanda from show where data = '2015-04-04'::date);