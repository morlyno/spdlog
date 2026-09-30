project "spdlog"
    kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	
	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "include/spdlog/common.h",
        "include/spdlog/file_event_handlers.h",
        "include/spdlog/filename_t.h",
        "include/spdlog/formatter.h",
        "include/spdlog/fwd.h",
        "include/spdlog/logger.h",
        "include/spdlog/namespace.h",
        "include/spdlog/pattern_formatter.h",
        "include/spdlog/source_loc.h",
        "include/spdlog/spdlog.h",
        "include/spdlog/stopwatch.h",
        "include/spdlog/version.h",
        "include/spdlog/details/circular_q.h",
        "include/spdlog/details/file_helper.h",
        "include/spdlog/details/fmt_helper.h",
        "include/spdlog/details/log_msg.h",
        "include/spdlog/details/async_log_msg.h",
        "include/spdlog/details/mpmc_blocking_q.h",
        "include/spdlog/details/null_mutex.h",
        "include/spdlog/details/os.h",
        "include/spdlog/details/err_helper.h",
        "include/spdlog/bin_to_hex.h",
        "include/spdlog/sinks/android_sink.h",
        "include/spdlog/sinks/base_sink.h",
        "include/spdlog/sinks/basic_file_sink.h",
        "include/spdlog/sinks/callback_sink.h",
        "include/spdlog/sinks/daily_file_sink.h",
        "include/spdlog/sinks/dist_sink.h",
        "include/spdlog/sinks/dup_filter_sink.h",
        "include/spdlog/sinks/hourly_file_sink.h",
        "include/spdlog/sinks/kafka_sink.h",
        "include/spdlog/sinks/mongo_sink.h",
        "include/spdlog/sinks/msvc_sink.h",
        "include/spdlog/sinks/null_sink.h",
        "include/spdlog/sinks/ostream_sink.h",
        "include/spdlog/sinks/qt_sinks.h",
        "include/spdlog/sinks/ringbuffer_sink.h",
        "include/spdlog/sinks/rotating_file_sink.h",
        "include/spdlog/sinks/sink.h",
        "include/spdlog/sinks/stdout_color_sinks.h",
        "include/spdlog/sinks/stdout_sinks.h",
        "include/spdlog/sinks/syslog_sink.h",
        "include/spdlog/sinks/systemd_sink.h",
        "include/spdlog/sinks/tcp_sink.h",
        "include/spdlog/sinks/udp_sink.h",
        "include/spdlog/sinks/async_sink.h",

        "src/common.cpp",
        "src/logger.cpp",
        "src/pattern_formatter.cpp",
        "src/spdlog.cpp",
        "src/details/file_helper.cpp",
        "src/details/os_filesystem.cpp",
        "src/details/log_msg.cpp",
        "src/details/async_log_msg.cpp",
        "src/details/err_helper.cpp",
        "src/sinks/base_sink.cpp",
        "src/sinks/basic_file_sink.cpp",
        "src/sinks/rotating_file_sink.cpp",
        "src/sinks/stdout_sinks.cpp",
        "src/sinks/async_sink.cpp",
	}

    includedirs {
        "include",

        "%{Dependencies.fmt.IncludeDir}"
    }
    
    defines {
        "SPDLOG_DISABLE_GLOBAL_LOGGER"
    }

	filter "system:windows"
        files {
            "include/spdlog/sinks/wincolor_sink.h",
            "include/spdlog/details/tcp_client_windows.h",
            "include/spdlog/details/udp_client_windows.h",
            "include/spdlog/details/windows_include.h",
            "include/spdlog/sinks/win_eventlog_sink.h",

            "src/details/os_windows.cpp",
            "src/sinks/wincolor_sink.cpp",
        }

