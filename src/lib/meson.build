libfyaml_prv_inc = include_directories('.')
xxhash_inc = include_directories('../xxhash')
libfyaml_src = [
    'fy-accel.c',
    'fy-atom.c',
    'fy-ctype.c',
    'fy-diag.c',
    'fy-doc.c',
    'fy-docstate.c',
    'fy-dump.c',
    'fy-emit.c',
    'fy-input.c',
    'fy-parse.c',
    'fy-token.c',
    'fy-types.c',
    'fy-utf8.c',
    'fy-utils.c',
    '../xxhash/xxhash.c'
]

libfyaml = shared_library('fyaml',
    libfyaml_src,
    include_directories: [libfyaml_inc, libfyaml_prv_inc, xxhash_inc],
    install: true)
libfyaml_dep = declare_dependency(link_with: libfyaml,
    include_directories: libfyaml_inc)

libfyaml_static = static_library('fyaml',
    libfyaml_src,
    include_directories: [libfyaml_inc, libfyaml_prv_inc, xxhash_inc],
    install: true)
libfyaml_static_dep = declare_dependency(link_with: libfyaml_static,
    include_directories: libfyaml_inc)
