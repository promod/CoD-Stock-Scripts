textures/common/hood
{
    surfaceparm nodraw
    surfaceparm nomarks
    surfaceparm castshadow
    surfaceparm nonsolid
    {
        map textures/common/hood.tga
	rgbGen identity
        blendfunc blend
    }
}

textures/common/hood_trans
{
    qer_editorimage textures/common/hood.tga
    surfaceparm nodraw
    surfaceparm nomarks
    surfaceparm castshadow
    surfaceparm nonsolid
    surfaceparm trans
    {
        map textures/common/hood.tga
	rgbGen identity
        blendfunc blend
    }
}