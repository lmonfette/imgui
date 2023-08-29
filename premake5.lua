project "imgui"
    kind "StaticLib" -- Static library project
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    
    -- Add your source files here
    files {
        "*.h",
        "*.cpp",
    }
    
    filter "system:windows"
    
    filter "system:linux"

    filter "system:macosx"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"