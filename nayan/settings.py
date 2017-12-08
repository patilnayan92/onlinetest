"""
settings for nayan app.
"""

# The number of code server processes to run..
N_CODE_SERVERS = 5

# The server pool port.  This is the server which returns available server
# ports so as to minimize load.  This is some random number where no other
# service is running.  It should be > 1024 and less < 65535 though.
SERVER_POOL_PORT = 53579

# Timeout for the code to run in seconds.  This is an integer!
SERVER_TIMEOUT = 4

# The root of the URL, for example you might be in the situation where you
# are not hosted as host.org/exam/  but as host.org/foo/exam/ for whatever
# reason set this to the root you have to serve at.  In the above example
# host.org/foo/exam set URL_ROOT='/foo'
URL_ROOT = ''

code_evaluators = {
    "python": {"standardtestcase": "nayan.python_assertion_evaluator.PythonAssertionEvaluator",
               "stdiobasedtestcase": "nayan.python_stdio_evaluator.PythonStdIOEvaluator",
               "hooktestcase": "nayan.hook_evaluator.HookEvaluator"
               },
    "c": {"standardtestcase": "nayan.cpp_code_evaluator.CppCodeEvaluator",
          "stdiobasedtestcase": "nayan.cpp_stdio_evaluator.CppStdIOEvaluator",
          "hooktestcase": "nayan.hook_evaluator.HookEvaluator"
          },
    "cpp": {"standardtestcase": "nayan.cpp_code_evaluator.CppCodeEvaluator",
            "stdiobasedtestcase": "nayan.cpp_stdio_evaluator.CppStdIOEvaluator",
            "hooktestcase": "nayan.hook_evaluator.HookEvaluator"
            },
    "java": {"standardtestcase": "nayan.java_code_evaluator.JavaCodeEvaluator",
             "stdiobasedtestcase": "nayan.java_stdio_evaluator.JavaStdIOEvaluator",
             "hooktestcase": "nayan.hook_evaluator.HookEvaluator"
             },
    "bash": {"standardtestcase": "nayan.bash_code_evaluator.BashCodeEvaluator",
             "stdiobasedtestcase": "nayan.bash_stdio_evaluator.BashStdIOEvaluator",
             "hooktestcase": "nayan.hook_evaluator.HookEvaluator"
             },
    "scilab": {"standardtestcase": "nayan.scilab_code_evaluator.ScilabCodeEvaluator",
               "hooktestcase": "nayan.hook_evaluator.HookEvaluator"
               },
}
