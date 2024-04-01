project "imgui"
	kind "StaticLib"
	language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir "%{wks.location}/bin/%{prj.name}/%{cfg.buildcfg}"
    objdir "%{wks.location}/obj/%{prj.name}/%{cfg.buildcfg}"

    files {
        "*.cpp",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_glfw.cpp"
    }

    includedirs {
        ".",
        "../glfw/include"
    }

    filter "system:windows"
        systemversion "latest"
        defines {
			"_CRT_SECURE_NO_WARNINGS"
        }

    filter "configurations:Debug"
        symbols "on"

    filter "configurations:Release"
        optimize "on"

