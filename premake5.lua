project "imgui"
    kind "StaticLib" -- Static library project
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    
    -- Add your source files here
    files {
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp",
        "imgui.h",
        "imgui.cpp",
        "imstb_truetype.h",
        "imstb_textedit.h",
        "imstb_rectpack.h",
        "imgui_widgets.cpp",
        "imgui_tables.cpp",
        "imgui_internal.h",
        "imgui_draw.cpp",
        "imgui_demo.cpp",
    }

    includedirs { ".", "../glfw/include" }
    
    filter "system:windows"
        architecture "x86_64"
    
    filter "system:linux"

    filter "system:macosx"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"