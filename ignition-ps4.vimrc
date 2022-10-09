"set makeprg=bash\ -c\ \"cd\ build/linux/debug;make\ report_unit_tests\ -j8&&tests/bin/report_unit_tests\"
"set makeprg=bash\ -c\ \"cd\ build/linux/debug;make\ report_unit_tests\ -j8&&tests/bin/report_unit_tests\ --gtest_filter=\"Crash*.*\"\"
let &makeprg = 'vs12build build\project\Ignition.sln RelWithDebInfo /build'
map <F11> :wa<Enter>:make<Enter>:TagbarClose<Enter>:copen<Enter><Enter>
map <S-F11> :silent !orbis-run /workingDirectory:build\install /spawn /noprogress /elf build\install\bin\ignition_monolith.elf --plugin=com.amazon.ignition.app.stark --enable-renderer-shortcuts --loglevel=info --js-args="--fake-player --skip-connectivity-check"<Enter><Enter>
map <F10> :wa<Enter>:!rm cscope*; cscope-indexer -r<Enter><Enter>:cscope reset<Enter><Enter>
source <sfile>:h/cmake.vimrc
