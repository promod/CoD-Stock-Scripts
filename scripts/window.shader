textures/normandy/windows/neuville_window
{
	qer_editorimage textures/normandy/windows/neuvilleframe.tga
	surfaceparm glass
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm playerclip
	surfaceparm monsterclip
	{
		map textures/normandy/windows/neuvilleglass.tga
		rgbGen exactVertex
		blendFunc blend
	}
	{
		map textures/normandy/windows/neuvilleframe.tga
		rgbGen exactVertex
		alphaFunc GE128
	nextbundle
		map $lightmap
	}
	{
		perlight
		map textures/normandy/windows/neuvilleframe.tga
		rgbGen exactVertex
		alphaFunc GE128
		blendFunc add
	nextbundle
		map $dlight
	}
}
