/* Quartus Prime Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSEBA6U23) Path("C:/Users/lucas/OneDrive/Insper/Semestre8/EmbarcadosAvanc/EmbarcadosAvancados/Entrega_02/output_files/") File("HelloNios.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
