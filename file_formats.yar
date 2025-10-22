rule mp3_detect {
	strings:
		$sign_mp3 = {49 44 33 04}
	condition:
		$sign_mp3
}

rule zip_detect{
	strings:
		$sign_zip_full = {50 4B 03 04}
		$sign_zip_empty = {50 4B 05 06}
	condition:
		$sign_zip_full or $sign_zip_empty
}

rule rar_detect{
	strings:
		$sign_rar = {52 61 72 21 1A (07|07 01) 00}
	condition:
		$sign_rar
}

rule jpeg_detect{
	strings:
		$sign_jpeg = {FF D8 FF DB}
		$sign_jpeg_exif = {FF D8 FF E1 ?? ?? 45 78 69 66 00 00}
		$sign_jpeg_jfif = {FF D8 FF E0 ?? ?? 4A 46 49 46 00 01}
	condition:
		$sign_jpeg or $sign_jpeg_exif or $sign_jpeg_jfif
}