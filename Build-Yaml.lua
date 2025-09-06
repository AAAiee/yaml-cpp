project "Yaml"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "on"

	targetdir ("../../../Binaries/" .. OutputDir .. "/%{prj.name}")
	objdir ("../../../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",

        "include/**.h
	}

    includedirs
    {
        "include"
    }


	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "speed"
        symbols "off"
	
