project "imgui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"
	
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir    ("bin-obj/" .. outputdir .. "/%{prj.name}")
	
	includedirs      {"../imgui", "%{IncludeDir.SDL2}/include",}
	
	files
	{
		"*.h",
		"*.cpp",
		"backends/imgui_impl_sdl.h",
		"backends/imgui_impl_sdl.cpp",
		"backends/imgui_impl_opengl3.h",
		"backends/imgui_impl_opengl3.cpp"
	}

	filter "system:windows"
		systemversion "latest"

  	filter "configurations:Debug"
      	runtime "Debug"
      	symbols "On"

   	filter "configurations:Release"
      	runtime "Release"
      	optimize "On"
		
