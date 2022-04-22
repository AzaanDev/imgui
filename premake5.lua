project "imgui"
  kind "StaticLib"
  language "C++"
  cppdialect "C++17"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir    ("bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
		"./backends/imgui_impl_sdl.h",
		"./backends/imgui_impl_sdl.cpp",
		"./backends/imgui_impl_opengl3.h",
		"./backends/imgui_impl_opengl3.cpp"
	}

filter "system:windows"
	systemversion "latest"
	staticruntime "On"

filter "configurations:Debug"
  runtime "Debug"
  symbols "on"

filter "configurations:Release"
  runtime "Release"
  optimize "on"
