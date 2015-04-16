textures/normandy/uniques/planecrash
{
	qer_editorimage textures/normandy/uniques/planecrashimage.tga
	surfaceparm grass
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	sort outerBlend
	polygonOffset
	{
		requires gl_max_texture_units_arb >= 3
		requires gl_arb_texture_env_combine
		map textures/normandy/uniques/planecrashimage.tga
		rgbGen exactVertex
		blendFunc blend
//		alphaFunc GE128
		depthWrite
	nextbundle
//		map textures/normandy/ground/dirt@oldpacked_large
		map textures/normandy/uniques/detail.jpg
		tcmod scale 16 16
		texEnvCombine
		{
			rgb = add_signed_arb( Cp, Ct )
			alpha = replace( Ap )
		}
	nextbundle
		map $lightmap
		texEnvCombine
		{
			rgb = modulate( Cp, Ct )
			alpha = replace( Ap )
		}
	}
}



textures/global_use/cratered_ground
{
	qer_editorimage textures/decals/decal@cratered_ground
	surfaceparm nonsolid
	surfaceparm trans
        surfaceparm noncolliding
	sort outerBlend
	polygonOffset
	{
		map textures/decals/decal@cratered_ground
		rgbGen exactVertex
		blendFunc blend
	nextbundle
		map $lightmap
	}
}

textures/normandy/ground/decal_rockface_blades1
{
	qer_editorimage textures/normandy/ground/decal_clampy@rockface_blades1
	surfaceparm nonsolid
	surfaceparm trans
        surfaceparm noncolliding
	polygonOffset
	sort outerBlend
	{
		map clampy textures/normandy/ground/decal_clampy@rockface_blades1
		rgbGen exactVertex
		blendFunc blend
	nextbundle
		map $lightmap
	}
}

textures/normandy/ground/decal_rockface_blades2
{
	qer_editorimage textures/normandy/ground/decal_clampy@rockface_blades2
	surfaceparm nonsolid
	surfaceparm trans
        surfaceparm noncolliding
	polygonOffset
	sort outerBlend
	{
		map clampy textures/normandy/ground/decal_clampy@rockface_blades2
		rgbGen exactVertex
		blendFunc blend
	nextbundle
		map $lightmap
	}
}

textures/normandy/ground/decal_rockface_blades3
{
	qer_editorimage textures/normandy/ground/decal_clampy@rockface_blades3
	surfaceparm nonsolid
	surfaceparm trans
        surfaceparm noncolliding
	polygonOffset
	sort outerBlend
	{
		map clampy textures/normandy/ground/decal_clampy@rockface_blades3
		rgbGen exactVertex
		blendFunc blend
	nextbundle
		map $lightmap
	}
}

textures/global_use/bushwall_noshadow
{
	qer_editorimage textures/global_use/foliage_clampy@bushwall1agrnd
	surfaceparm foliage
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	//cull disable
	{
		map clampy textures/global_use/foliage_clampy@bushwall1agrnd
		rgbGen exactVertex
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}


textures/normandy/uniques/roadfork
{
	qer_editorimage textures/normandy/uniques/roadfork.tga
	surfaceparm dirt
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	sort outerBlend
	polygonOffset
	{
		requires gl_max_texture_units_arb >= 3
		requires gl_arb_texture_env_combine
		map textures/normandy/uniques/roadfork.tga
		rgbGen exactVertex
		blendFunc blend
		depthWrite
	nextbundle
		map textures/normandy/uniques/detail.jpg
		tcmod scale 16 16
		texEnvCombine
		{
			rgb = add_signed_arb( Cp, Ct )
			alpha = replace( Ap )
		}
	nextbundle
		map $lightmap
		texEnvCombine
		{
			rgb = modulate( Cp, Ct )
			alpha = replace( Ap )
		}
	}
}


textures/normandy/uniques/grassarea
{
	qer_editorimage textures/normandy/uniques/grassarea.tga
	surfaceparm dirt
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	sort outerBlend
	polygonOffset
	{
		requires gl_max_texture_units_arb >= 3
		requires gl_arb_texture_env_combine
		map textures/normandy/uniques/grassarea.tga
		rgbGen exactVertex
		blendFunc blend
		depthWrite
	nextbundle
		map textures/normandy/uniques/detailgrass.jpg
		tcmod scale 16 16
		texEnvCombine
		{
			rgb = add_signed_arb( Cp, Ct )
			alpha = replace( Ap )
		}
	nextbundle
		map $lightmap

		texEnvCombine
		{
			rgb = modulate( Cp, Ct )
			alpha = replace( Ap )
		}
	}
}


textures/normandy/uniques/desertmask
{
	qer_editorimage textures/normandy/uniques/desertmask.tga
	surfaceparm dirt
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	sort outerBlend
	polygonOffset
	{
		requires gl_max_texture_units_arb >= 3
		requires gl_arb_texture_env_combine
		map textures/normandy/uniques/desertmask.tga
		rgbGen exactVertex
		blendFunc blend
		depthWrite
	nextbundle
		map textures/normandy/uniques/detailsand.jpg
		tcmod scale 16 16
		texEnvCombine
		{
			rgb = add_signed_arb( Cp, Ct )
			alpha = replace( Ap )
		}
	nextbundle
		map $lightmap

		texEnvCombine
		{
			rgb = modulate( Cp, Ct )
			alpha = replace( Ap )
		}
	}
}


