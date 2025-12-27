

target("khbase")
	set_kind("static")
	set_warnings("all", "extra", "error")
	add_files("./*.mpp", "memory/*.mpp", "misc/*.mpp")
	add_files("./*.mpp", "memory/*.mpp", "misc/*.mpp", {public = true})

	set_languages("c++23")
	set_exceptions("no-cxx")
	on_config(function (target)
        if (target:has_tool("cxx", "cl")) then
            target:add("cxflags", "/GR-", {force = true})
        elseif(target:has_tool("cxx", "clang") or target:has_tool("cxx", "clang-cl") or target:has_tool("cxx", "gcc")) then
            target:add("cxflags", "-fno-rtti", {force = true})
        end
    end)
