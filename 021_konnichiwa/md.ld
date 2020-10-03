OUTPUT_FORMAT("binary");

MEMORY
{
	rom(rx) : ORIGIN = 0x00000000, LENGTH = 4m
}

SECTIONS
{
	.text : {} >rom
}
