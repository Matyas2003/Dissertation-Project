{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -1.0, 52.0, 1536.0, 781.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 461.0, 1284.0, 105.0, 22.0 ],
					"text" : "jit.gl.spoutreceiver"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 434.0, 1521.897417068481445, 291.0, 22.0 ],
					"text" : "jit.gl.spoutsender vsynth @sendername spoutSender"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 512.0, 1359.666648864746094, 80.0, 60.0 ],
					"sync" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_wfg_2.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1490.0, 579.024545974731495, 277.068837739130458, 99.5 ],
					"varname" : "vs_wfg_2",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 779.039999999999964, 633.766227722167969, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-79",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1235.064923286437988, 148.680157899262952, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-76",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1151.948040962219238, 148.680157899262952, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-74",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1088.311677932739258, 148.680157899262952, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-72",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1016.88310718536377, 148.680157899262952, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-70",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 952.481556930541956, 148.680157899262952, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-68",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 881.818173408508301, 148.680157899262952, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1244.373636970520238, 458.441554069519043, 611.0, 36.0 ],
					"text" : "read C:/Users/Andras/Desktop/work/MASZ/SER-SpeechMaster/images/landscapes/00000330_(2).jpg, automatic 1, start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1242.103886604309082, 412.982467842102039, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-57",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_displacement.maxpat",
					"numinlets" : 5,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 1242.103886604309082, 670.753244400024414, 162.0, 119.0 ],
					"varname" : "vs_displacement",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 1242.103886604309082, 538.260089039802551, 606.0, 36.0 ],
					"text" : "jit.movie @engine avf @loop 1 @output_texture 1 @autostart 1 @drawto vsynth @automatic 0 @fps 120 @dim 1920 1080"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 1355.062639824698635, 582.260089039802551, 80.0, 60.0 ],
					"sync" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1242.103886604309082, 352.935061454772892, 629.0, 36.0 ],
					"text" : "\"read C:/Users/Andras/Desktop/work/MASZ/SER-SpeechMaster/images/landscapes/00000330_(2).jpg, automatic 1, start\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 938.875456809997559, 715.260613321664323, 46.0, 22.0 ],
					"text" : "freq $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 952.481556930541956, 633.57000000000005, 103.0, 22.0 ],
					"text" : "scale 0. 1. 80 400"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 778.14714286565777, 696.364509462716569, 58.0, 22.0 ],
					"text" : "speed $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 778.14714286565777, 579.024545974731495, 110.0, 22.0 ],
					"text" : "scale 0. 1. 0.1 0.45"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 598.053067572762302, 388.400224625470685, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 598.053067572762302, 344.260613321664323, 61.0, 22.0 ],
					"text" : "maximum"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 521.429691680123142, 292.877634643914689, 154.0, 22.0 ],
					"text" : "pack 0. 0. 0. 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 598.053067572762302, 101.436022221448468, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_modules.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 283.804027915000916, 424.897417068481445, 79.0, 316.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 253.804027915000916, 292.877634643914689, 109.0, 22.0 ],
					"text" : "loadmess enable 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-12",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_duotoner.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1041.589741706848145, 1159.105688810348511, 141.0, 64.0 ],
					"varname" : "vs_duotoner[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-23",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_wfg_3.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture" ],
					"patching_rect" : [ 964.589741706848145, 848.397417068481445, 178.0, 132.0 ],
					"varname" : "vs_wfg_3[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 482.742226727654213, 435.900224625470685, 429.0, 22.0 ],
					"text" : "name vs_patchbook_coolColorizer4, read vs_patchbook_coolColorizer4.json, 9",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "vs_patchbook_coolColorizer4.json",
					"hidden" : 1,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 482.742226727654213, 613.400224625470628, 135.0, 22.0 ],
					"priority" : 					{
						"vs_lfo::lfo_freq_range" : -1,
						"vs_huemod_2::hm2_range" : -1,
						"vs_huemod_2::hm2_sat_range" : -1,
						"vs_wfg_3::wfg3_freq_range" : -1,
						"vs_wfg_3::wfg3_fm_range" : -1,
						"vs_wfg_3::wfg3_pm_range" : -1,
						"vs_wfg_3[2]::wfg3_freq_range" : -1,
						"vs_wfg_3[2]::wfg3_fm_range" : -1,
						"vs_wfg_3[2]::wfg3_pm_range" : -1,
						"vs_wfg_3[1]::wfg3_freq_range" : -1,
						"vs_wfg_3[1]::wfg3_fm_range" : -1,
						"vs_wfg_3[1]::wfg3_pm_range" : -1,
						"vs_displacement::displacement_gui::displacement_anglemenu" : -1,
						"vs_displacement::displacement_gui::displacement_x_range" : -1,
						"vs_displacement::displacement_gui::displacement_y_range" : -1,
						"vs_displacement::displacement_gui::displacement_scale_xm" : -1,
						"vs_displacement::displacement_gui::displacement_scale_ym" : -1,
						"vs_displacement::displacement_gui::displacement_angle_range" : -1,
						"vs_wfg_2::wfg2_freq_range" : -1,
						"vs_wfg_2::wfg2_fm_range" : -1,
						"vs_wfg_2::wfg2_pm_range" : -1
					}
,
					"saved_object_attributes" : 					{
						"client_rect" : [ 854, 172, 1208, 300 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 766, 44, 1220, 302 ]
					}
,
					"text" : "pattrstorage @greedy 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "vs_patchbook_coolColorizer4"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-14",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vsc_presets.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 482.742226727654213, 496.400224625470628, 173.000000000000057, 111.0 ],
					"varname" : "vs_presets",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-22",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_op2.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 747.589741706848145, 1265.897417068481445, 49.0, 41.0 ],
					"varname" : "vs_op2[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-18",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_duotoner.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 861.589741706848145, 1172.897417068481445, 141.0, 64.0 ],
					"varname" : "vs_duotoner[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-15",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_blendmode_mixer.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 1041.589741706848145, 1051.897417068481445, 115.0, 94.0 ],
					"varname" : "vs_blendmode_mixer[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-16",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_blendmode_mixer.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 861.589741706848145, 1051.897417068481445, 115.0, 94.0 ],
					"varname" : "vs_blendmode_mixer[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-17",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_wfg_3.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture" ],
					"patching_rect" : [ 1162.589741706848145, 848.397417068481445, 178.0, 132.0 ],
					"varname" : "vs_wfg_3[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-21",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_output.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 747.589741706848145, 1524.897417068481445, 163.0, 19.0 ],
					"varname" : "vs_output",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-30",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_camera_s.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 283.804027915000916, 344.260613321664323, 140.0, 48.0 ],
					"varname" : "vs_camera_s",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-31",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_3bandsplit.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture", "jit_gl_texture" ],
					"patching_rect" : [ 832.089741706848145, 1007.897417068481445, 78.0, 19.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-32",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_wfg_3.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture" ],
					"patching_rect" : [ 777.589741706848145, 843.07826817035675, 178.0, 132.0 ],
					"varname" : "vs_wfg_3",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-33",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_blendmode_mixer.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 681.589741706848145, 1051.897417068481445, 115.0, 94.0 ],
					"varname" : "vs_blendmode_mixer",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-34",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_duotoner.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 681.589741706848145, 1172.897417068481445, 141.0, 64.0 ],
					"varname" : "vs_duotoner",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-35",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_op2.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 681.589741706848145, 1265.897417068481445, 49.0, 41.0 ],
					"varname" : "vs_op2",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-36",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_rgb2yuv.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 901.589741706848145, 1332.897417068481445, 61.0, 19.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-38",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_huemod_2.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 747.589741706848145, 1421.897417068481445, 144.0, 75.0 ],
					"varname" : "vs_huemod_2",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-39",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_filter_lp2x.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 1498.531289458274841, 921.279568612575531, 61.0, 71.0 ],
					"varname" : "vs_filter_lp2x",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-40",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_lfo.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "float" ],
					"patching_rect" : [ 907.089741706848145, 1421.897417068481445, 75.0, 72.0 ],
					"varname" : "vs_lfo",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-43",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_crssfade.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 747.589741706848145, 1359.666648864746094, 173.0, 45.0 ],
					"varname" : "vs_crssfade",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 482.742226727654213, 388.400224625470685, 58.0, 22.0 ],
					"text" : "loadbang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-20",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1473.603886604309082, 120.108729600312756, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-24",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.539999999999964, 148.680157899262952, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-25",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 726.28201092069321, 148.680157899262952, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-4",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 643.440391898155212, 148.680157899262952, 59.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 11,
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 774.333958514382175, 78.275757490994977, 605.779218673706055, 22.0 ],
					"text" : "route /sad /neutral /happy /fear /calm /angry /disgust /ps /boredom /img"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 692.515777476479343, 26.847185789945172, 97.0, 22.0 ],
					"style" : "redness",
					"text" : "udpreceive 5005"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"midpoints" : [ 1051.089741706848145, 1250.897417068481445, 787.089741706848145, 1250.897417068481445 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-126", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"midpoints" : [ 871.089741706848145, 1243.897417068481445, 721.089741706848145, 1243.897417068481445 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-2", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"order" : 0,
					"source" : [ "obj-2", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-2", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-2", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-2", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-2", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-2", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 2 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 1 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-31", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 691.089741706848145, 1324.897417068481445, 738.589741706848145, 1324.897417068481445, 738.589741706848145, 1250.897417068481445, 757.089741706848145, 1250.897417068481445 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 2,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"order" : 1,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 2,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 1,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 2,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 1,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 1 ],
					"order" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"order" : 1,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 3 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 4 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 4 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 5 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 6 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 7 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 8 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-12::obj-15" : [ "bc1[2]", "live.text[6]", 0 ],
			"obj-12::obj-24" : [ "duo_c1[2]", "swatch", 0 ],
			"obj-12::obj-27" : [ "duo_mode[2]", "live.text[6]", 0 ],
			"obj-12::obj-28" : [ "duo_threshold[2]", "Threshold", 0 ],
			"obj-12::obj-29" : [ "duo_smooth[2]", "Smooth", 0 ],
			"obj-12::obj-37" : [ "duo_c2[2]", "swatch", 0 ],
			"obj-12::obj-4" : [ "bc2[2]", "live.text", 0 ],
			"obj-14::obj-10" : [ "vs_preset_name[1]", "vs_preset_name", 0 ],
			"obj-14::obj-15" : [ "live.tab[1]", "live.tab", 0 ],
			"obj-14::obj-32" : [ "live.numbox[1]", "live.numbox", 0 ],
			"obj-15::obj-1" : [ "bm_master[2]", "Master", 0 ],
			"obj-15::obj-27" : [ "bm_mode[2]", "live.menu", 0 ],
			"obj-15::obj-94" : [ "bm_ch1[2]", "In 1", 0 ],
			"obj-15::obj-98" : [ "bm_ch2[2]", "In 2", 0 ],
			"obj-16::obj-1" : [ "bm_master[1]", "Master", 0 ],
			"obj-16::obj-27" : [ "bm_mode[1]", "live.menu", 0 ],
			"obj-16::obj-94" : [ "bm_ch1[1]", "In 1", 0 ],
			"obj-16::obj-98" : [ "bm_ch2[1]", "In 2", 0 ],
			"obj-17::obj-10" : [ "wfg3_bias[1]", "Bias", 0 ],
			"obj-17::obj-14" : [ "wfg3_biasm[1]", "BM", 0 ],
			"obj-17::obj-17" : [ "live.menu[10]", "live.menu", 0 ],
			"obj-17::obj-22" : [ "live.toggle[5]", "live.toggle[1]", 0 ],
			"obj-17::obj-24" : [ "live.toggle[4]", "live.toggle", 0 ],
			"obj-17::obj-29" : [ "wfg3_freq[1]", "Freq", 0 ],
			"obj-17::obj-30" : [ "wfg3_angle[1]", "Angle", 0 ],
			"obj-17::obj-4" : [ "wfg3_fm[1]", "FM", 0 ],
			"obj-17::obj-42" : [ "live.toggle[3]", "live.toggle", 0 ],
			"obj-17::obj-53" : [ "wfg3_speed[1]", "Speed", 0 ],
			"obj-17::obj-6" : [ "wfg3_pm[1]", "PM", 0 ],
			"obj-17::obj-63" : [ "wfg3_phase[1]", "Phase", 0 ],
			"obj-17::obj-65" : [ "wfg3_shape[1]", "Shape", 0 ],
			"obj-17::obj-72" : [ "wfg3_phase_time_switch[1]", "wfg2_phase_time_switch", 0 ],
			"obj-18::obj-15" : [ "bc1[1]", "live.text[6]", 0 ],
			"obj-18::obj-24" : [ "duo_c1[1]", "swatch", 0 ],
			"obj-18::obj-27" : [ "duo_mode[1]", "live.text[6]", 0 ],
			"obj-18::obj-28" : [ "duo_threshold[1]", "Threshold", 0 ],
			"obj-18::obj-29" : [ "duo_smooth[1]", "Smooth", 0 ],
			"obj-18::obj-37" : [ "duo_c2[1]", "swatch", 0 ],
			"obj-18::obj-4" : [ "bc2[1]", "live.text", 0 ],
			"obj-21::obj-1" : [ "toggle[1]", "toggle[1]", 0 ],
			"obj-21::obj-10" : [ "toggle[2]", "toggle[2]", 0 ],
			"obj-21::obj-36" : [ "uppr_x", "uppr_x", 0 ],
			"obj-22::obj-18" : [ "op2_op[1]", "live.menu", 0 ],
			"obj-23::obj-10" : [ "wfg3_bias[2]", "Bias", 0 ],
			"obj-23::obj-14" : [ "wfg3_biasm[2]", "BM", 0 ],
			"obj-23::obj-17" : [ "live.menu[15]", "live.menu", 0 ],
			"obj-23::obj-22" : [ "live.toggle[8]", "live.toggle[1]", 0 ],
			"obj-23::obj-24" : [ "live.toggle[7]", "live.toggle", 0 ],
			"obj-23::obj-29" : [ "wfg3_freq[2]", "Freq", 0 ],
			"obj-23::obj-30" : [ "wfg3_angle[2]", "Angle", 0 ],
			"obj-23::obj-4" : [ "wfg3_fm[2]", "FM", 0 ],
			"obj-23::obj-42" : [ "live.toggle[6]", "live.toggle", 0 ],
			"obj-23::obj-53" : [ "wfg3_speed[2]", "Speed", 0 ],
			"obj-23::obj-6" : [ "wfg3_pm[2]", "PM", 0 ],
			"obj-23::obj-63" : [ "wfg3_phase[2]", "Phase", 0 ],
			"obj-23::obj-65" : [ "wfg3_shape[2]", "Shape", 0 ],
			"obj-23::obj-72" : [ "wfg3_phase_time_switch[2]", "wfg2_phase_time_switch", 0 ],
			"obj-30::obj-18" : [ "live.text", "live.text", 0 ],
			"obj-30::obj-20" : [ "cam_invx", "flip_x", 0 ],
			"obj-32::obj-10" : [ "wfg3_bias", "Bias", 0 ],
			"obj-32::obj-14" : [ "wfg3_biasm", "BM", 0 ],
			"obj-32::obj-17" : [ "live.menu", "live.menu", 0 ],
			"obj-32::obj-22" : [ "live.toggle[1]", "live.toggle[1]", 0 ],
			"obj-32::obj-24" : [ "live.toggle", "live.toggle", 0 ],
			"obj-32::obj-29" : [ "wfg3_freq", "Freq", 0 ],
			"obj-32::obj-30" : [ "wfg3_angle", "Angle", 0 ],
			"obj-32::obj-4" : [ "wfg3_fm", "FM", 0 ],
			"obj-32::obj-42" : [ "live.toggle[2]", "live.toggle", 0 ],
			"obj-32::obj-53" : [ "wfg3_speed", "Speed", 0 ],
			"obj-32::obj-6" : [ "wfg3_pm", "PM", 0 ],
			"obj-32::obj-63" : [ "wfg3_phase", "Phase", 0 ],
			"obj-32::obj-65" : [ "wfg3_shape", "Shape", 0 ],
			"obj-32::obj-72" : [ "wfg3_phase_time_switch", "wfg2_phase_time_switch", 0 ],
			"obj-33::obj-1" : [ "bm_master", "Master", 0 ],
			"obj-33::obj-27" : [ "bm_mode", "live.menu", 0 ],
			"obj-33::obj-94" : [ "bm_ch1", "In 1", 0 ],
			"obj-33::obj-98" : [ "bm_ch2", "In 2", 0 ],
			"obj-34::obj-15" : [ "bc1", "live.text[6]", 0 ],
			"obj-34::obj-24" : [ "duo_c1", "swatch", 0 ],
			"obj-34::obj-27" : [ "duo_mode", "live.text[6]", 0 ],
			"obj-34::obj-28" : [ "duo_threshold", "Threshold", 0 ],
			"obj-34::obj-29" : [ "duo_smooth", "Smooth", 0 ],
			"obj-34::obj-37" : [ "duo_c2", "swatch", 0 ],
			"obj-34::obj-4" : [ "bc2", "live.text", 0 ],
			"obj-35::obj-18" : [ "op2_op", "live.menu", 0 ],
			"obj-38::obj-23" : [ "live.menu[12]", "live.menu", 0 ],
			"obj-38::obj-39" : [ "hm2_hm", "HM", 0 ],
			"obj-38::obj-46" : [ "hm2_hue", "Hue", 0 ],
			"obj-38::obj-48" : [ "hm2_sat", "Sat", 0 ],
			"obj-38::obj-5" : [ "live.menu[1]", "live.menu", 0 ],
			"obj-39::obj-51" : [ "lpf_freq", "Cutoff", 0 ],
			"obj-3::obj-14" : [ "live.menu[19]", "live.menu", 0 ],
			"obj-3::obj-16" : [ "live.menu[2]", "live.menu", 0 ],
			"obj-3::obj-18" : [ "live.menu[21]", "live.menu", 0 ],
			"obj-3::obj-2" : [ "live.menu[20]", "live.menu", 0 ],
			"obj-3::obj-22" : [ "live.menu[17]", "live.menu", 0 ],
			"obj-3::obj-24" : [ "live.menu[9]", "live.menu", 0 ],
			"obj-3::obj-25" : [ "live.menu[18]", "live.menu", 0 ],
			"obj-3::obj-26" : [ "live.menu[11]", "live.menu", 0 ],
			"obj-3::obj-27" : [ "live.menu[16]", "live.menu", 0 ],
			"obj-3::obj-29" : [ "live.menu[13]", "live.menu", 0 ],
			"obj-3::obj-30" : [ "live.menu[14]", "live.menu", 0 ],
			"obj-3::obj-33" : [ "live.menu[22]", "live.menu", 0 ],
			"obj-3::obj-36" : [ "live.menu[3]", "live.menu", 0 ],
			"obj-3::obj-52" : [ "live.menu[4]", "live.menu", 0 ],
			"obj-3::obj-53" : [ "live.menu[5]", "live.menu", 0 ],
			"obj-3::obj-56" : [ "live.menu[6]", "live.menu", 0 ],
			"obj-40::obj-34" : [ "live.dial[1]", "Freq", 0 ],
			"obj-40::obj-35" : [ "live.dial", "Freq", 0 ],
			"obj-40::obj-4" : [ "lfo_freq__range", "live.text", 0 ],
			"obj-40::obj-53" : [ "lfo_freq", "Freq", 0 ],
			"obj-40::obj-82" : [ "lfo_wave", "lfo_wave", 0 ],
			"obj-40::obj-97" : [ "lfo_pw", "lfo_pw", 0 ],
			"obj-43::obj-4" : [ "crossfade", "CROSSFADE", 0 ],
			"obj-57::obj-22::obj-19" : [ "displacement_angle", "Angle", 0 ],
			"obj-57::obj-22::obj-29" : [ "live.numbox", "live.numbox", 0 ],
			"obj-57::obj-22::obj-35" : [ "displacement_zoom", "Zoom", 0 ],
			"obj-57::obj-22::obj-4" : [ "disp_ang_range", "angle", 0 ],
			"obj-57::obj-22::obj-40" : [ "displacement_y_m", "YM", 0 ],
			"obj-57::obj-22::obj-42" : [ "displacement_x_m", "XM", 0 ],
			"obj-57::obj-22::obj-44" : [ "displacement_zoom_m", "ZM", 0 ],
			"obj-57::obj-22::obj-47" : [ "displacement_angle_m", "AGLM", 0 ],
			"obj-57::obj-22::obj-52" : [ "MENU[1]", "angle", 0 ],
			"obj-57::obj-22::obj-55" : [ "MENU[2]", "angle", 0 ],
			"obj-57::obj-22::obj-56" : [ "MENU[3]", "angle", 0 ],
			"obj-57::obj-22::obj-57" : [ "MENU[4]", "angle", 0 ],
			"obj-57::obj-22::obj-6" : [ "offrot_x", "X", 0 ],
			"obj-57::obj-22::obj-67" : [ "menu", "angle", 0 ],
			"obj-57::obj-22::obj-8" : [ "displacement_y", "Y", 0 ],
			"obj-57::obj-33" : [ "displacement_init_point", "live.text", 2 ],
			"obj-57::obj-8" : [ "displacement_polar", "live.text", 2 ],
			"obj-57::obj-96" : [ "displacement_boundmode", "live.menu", 0 ],
			"obj-7::obj-10" : [ "wfg2_pm", "PM", 0 ],
			"obj-7::obj-13" : [ "live.toggle[10]", "live.toggle", 0 ],
			"obj-7::obj-130" : [ "wfg2_time", "Time", 0 ],
			"obj-7::obj-139" : [ "wfg2_sync_lock", "wfg2_sync_lock", 0 ],
			"obj-7::obj-23" : [ "wfg2_pwm", "PWM", 0 ],
			"obj-7::obj-24" : [ "wfg2_pw", "PW", 0 ],
			"obj-7::obj-25" : [ "wfg2_fm", "FM", 0 ],
			"obj-7::obj-26" : [ "wfg2_freq", "Freq", 0 ],
			"obj-7::obj-27" : [ "wfg2_wf", "wfg2_wf", 0 ],
			"obj-7::obj-28" : [ "live.toggle[9]", "live.toggle[1]", 0 ],
			"obj-7::obj-6" : [ "live.toggle[11]", "live.toggle[1]", 0 ],
			"obj-7::obj-63" : [ "wfg2_phase", "Phase", 0 ],
			"obj-7::obj-72" : [ "wfg2_phase_time_switch", "wfg2_phase_time_switch", 0 ],
			"obj-7::obj-73" : [ "wfg2_time_range", "wfg2_time_range", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-12::obj-15" : 				{
					"parameter_longname" : "bc1[2]"
				}
,
				"obj-12::obj-27" : 				{
					"parameter_longname" : "duo_mode[2]"
				}
,
				"obj-12::obj-28" : 				{
					"parameter_longname" : "duo_threshold[2]"
				}
,
				"obj-12::obj-29" : 				{
					"parameter_longname" : "duo_smooth[2]"
				}
,
				"obj-12::obj-4" : 				{
					"parameter_longname" : "bc2[2]"
				}
,
				"obj-14::obj-15" : 				{
					"parameter_longname" : "live.tab[1]"
				}
,
				"obj-14::obj-32" : 				{
					"parameter_longname" : "live.numbox[1]"
				}
,
				"obj-15::obj-1" : 				{
					"parameter_longname" : "bm_master[2]"
				}
,
				"obj-15::obj-27" : 				{
					"parameter_longname" : "bm_mode[2]"
				}
,
				"obj-15::obj-94" : 				{
					"parameter_longname" : "bm_ch1[2]"
				}
,
				"obj-15::obj-98" : 				{
					"parameter_longname" : "bm_ch2[2]"
				}
,
				"obj-16::obj-1" : 				{
					"parameter_longname" : "bm_master[1]"
				}
,
				"obj-16::obj-27" : 				{
					"parameter_longname" : "bm_mode[1]"
				}
,
				"obj-16::obj-94" : 				{
					"parameter_longname" : "bm_ch1[1]"
				}
,
				"obj-16::obj-98" : 				{
					"parameter_longname" : "bm_ch2[1]"
				}
,
				"obj-17::obj-10" : 				{
					"parameter_longname" : "wfg3_bias[1]"
				}
,
				"obj-17::obj-14" : 				{
					"parameter_longname" : "wfg3_biasm[1]"
				}
,
				"obj-17::obj-17" : 				{
					"parameter_longname" : "live.menu[10]"
				}
,
				"obj-17::obj-22" : 				{
					"parameter_longname" : "live.toggle[5]"
				}
,
				"obj-17::obj-24" : 				{
					"parameter_longname" : "live.toggle[4]"
				}
,
				"obj-17::obj-29" : 				{
					"parameter_longname" : "wfg3_freq[1]",
					"parameter_range" : [ 0.0, 1020.0 ]
				}
,
				"obj-17::obj-30" : 				{
					"parameter_longname" : "wfg3_angle[1]"
				}
,
				"obj-17::obj-4" : 				{
					"parameter_longname" : "wfg3_fm[1]",
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-17::obj-42" : 				{
					"parameter_longname" : "live.toggle[3]"
				}
,
				"obj-17::obj-53" : 				{
					"parameter_longname" : "wfg3_speed[1]"
				}
,
				"obj-17::obj-6" : 				{
					"parameter_longname" : "wfg3_pm[1]",
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-17::obj-63" : 				{
					"parameter_longname" : "wfg3_phase[1]"
				}
,
				"obj-17::obj-65" : 				{
					"parameter_longname" : "wfg3_shape[1]"
				}
,
				"obj-17::obj-72" : 				{
					"parameter_longname" : "wfg3_phase_time_switch[1]"
				}
,
				"obj-18::obj-15" : 				{
					"parameter_longname" : "bc1[1]"
				}
,
				"obj-18::obj-27" : 				{
					"parameter_longname" : "duo_mode[1]"
				}
,
				"obj-18::obj-28" : 				{
					"parameter_longname" : "duo_threshold[1]"
				}
,
				"obj-18::obj-29" : 				{
					"parameter_longname" : "duo_smooth[1]"
				}
,
				"obj-18::obj-4" : 				{
					"parameter_longname" : "bc2[1]"
				}
,
				"obj-22::obj-18" : 				{
					"parameter_longname" : "op2_op[1]"
				}
,
				"obj-23::obj-10" : 				{
					"parameter_longname" : "wfg3_bias[2]"
				}
,
				"obj-23::obj-14" : 				{
					"parameter_longname" : "wfg3_biasm[2]"
				}
,
				"obj-23::obj-17" : 				{
					"parameter_longname" : "live.menu[15]"
				}
,
				"obj-23::obj-22" : 				{
					"parameter_longname" : "live.toggle[8]"
				}
,
				"obj-23::obj-24" : 				{
					"parameter_longname" : "live.toggle[7]"
				}
,
				"obj-23::obj-29" : 				{
					"parameter_longname" : "wfg3_freq[2]",
					"parameter_range" : [ 0.0, 1020.0 ]
				}
,
				"obj-23::obj-30" : 				{
					"parameter_longname" : "wfg3_angle[2]"
				}
,
				"obj-23::obj-4" : 				{
					"parameter_longname" : "wfg3_fm[2]",
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-23::obj-42" : 				{
					"parameter_longname" : "live.toggle[6]"
				}
,
				"obj-23::obj-53" : 				{
					"parameter_longname" : "wfg3_speed[2]"
				}
,
				"obj-23::obj-6" : 				{
					"parameter_longname" : "wfg3_pm[2]",
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-23::obj-63" : 				{
					"parameter_longname" : "wfg3_phase[2]"
				}
,
				"obj-23::obj-65" : 				{
					"parameter_longname" : "wfg3_shape[2]"
				}
,
				"obj-23::obj-72" : 				{
					"parameter_longname" : "wfg3_phase_time_switch[2]"
				}
,
				"obj-32::obj-29" : 				{
					"parameter_range" : [ 0.0, 1020.0 ]
				}
,
				"obj-32::obj-4" : 				{
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-32::obj-6" : 				{
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-38::obj-39" : 				{
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-38::obj-48" : 				{
					"parameter_range" : [ -2.0, 2.0 ]
				}
,
				"obj-3::obj-14" : 				{
					"parameter_longname" : "live.menu[19]"
				}
,
				"obj-3::obj-18" : 				{
					"parameter_longname" : "live.menu[21]"
				}
,
				"obj-3::obj-2" : 				{
					"parameter_longname" : "live.menu[20]"
				}
,
				"obj-3::obj-25" : 				{
					"parameter_longname" : "live.menu[18]"
				}
,
				"obj-3::obj-27" : 				{
					"parameter_longname" : "live.menu[16]"
				}
,
				"obj-3::obj-33" : 				{
					"parameter_longname" : "live.menu[22]"
				}
,
				"obj-57::obj-22::obj-19" : 				{
					"parameter_range" : [ -180.0, 180.0 ]
				}
,
				"obj-57::obj-22::obj-40" : 				{
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-57::obj-22::obj-42" : 				{
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-57::obj-22::obj-47" : 				{
					"parameter_range" : [ -6.28, 6.28 ]
				}
,
				"obj-57::obj-22::obj-6" : 				{
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-57::obj-22::obj-8" : 				{
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-7::obj-10" : 				{
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-7::obj-13" : 				{
					"parameter_longname" : "live.toggle[10]"
				}
,
				"obj-7::obj-25" : 				{
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-7::obj-26" : 				{
					"parameter_range" : [ 0.0, 1020.0 ]
				}
,
				"obj-7::obj-28" : 				{
					"parameter_longname" : "live.toggle[9]"
				}
,
				"obj-7::obj-6" : 				{
					"parameter_longname" : "live.toggle[11]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "addmod.js",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "displacement_gui.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "down.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "jit.gl.spoutreceiver.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "jit.gl.spoutsender.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "moduleSize.js",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "noise2.svg",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/media",
				"patcherrelativepath" : "../media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "saw.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "sine.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "square.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "timediv.txt",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "up.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "vs_3bandsplit.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_blendmode_mixer.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_bm_add.genjit",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/code",
				"patcherrelativepath" : "../code",
				"type" : "gJIT",
				"implicit" : 1
			}
, 			{
				"name" : "vs_camera_s.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_crssfade.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_displacement.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_duotoner.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_filter_lp2x.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_huemod_2.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_lfo.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_lfo_ramp.genjit",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/code",
				"patcherrelativepath" : "../code",
				"type" : "gJIT",
				"implicit" : 1
			}
, 			{
				"name" : "vs_modules.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_op2.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_op2max.genjit",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/code",
				"patcherrelativepath" : "../code",
				"type" : "gJIT",
				"implicit" : 1
			}
, 			{
				"name" : "vs_output.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_patchbook_coolColorizer4.json",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/extras",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_rgb2yuv.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_wfg_2.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_wfg_3.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_wfg_saw.genjit",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/code",
				"patcherrelativepath" : "../code",
				"type" : "gJIT",
				"implicit" : 1
			}
, 			{
				"name" : "vsc_presets.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.243, 0.243, 0.243, 1.0 ],
		"editing_bgcolor" : [ 0.243, 0.243, 0.243, 1.0 ]
	}

}
