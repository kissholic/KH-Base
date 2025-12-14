set_project("kh_base")

add_rules("mode.debug", "mode.release")




includes("src")

for _, file in ipairs(os.files("test/**.cpp")) do 
	local name = path.basename(file)
	target(name)
		set_kind("binary")
		add_files("test/" .. name .. ".cpp")
		add_tests("default")
		add_deps("khbase")
		set_languages("c++23")
end
