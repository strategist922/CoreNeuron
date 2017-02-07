# Copyright (c) 2017, Blue Brain Project
# All rights reserved.

# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that the following conditions are met:
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
# 3. Neither the name of the copyright holder nor the names of its contributors
#    may be used to endorse or promote products derived from this software
#    without specific prior written permission.

# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
# THE POSSIBILITY OF SUCH DAMAGE.


# FindDLB
# -------------
#
# Find Dynamic Load Balancing (DLB) library from BSC
#
#
#   find_package(DLB REQUIRED)
#   include_directories(${DLB_INCLUDE_DIRS})
#   target_link_libraries(foo ${DLB_LIBRARIES})
#
# This module sets the following variables:
#
# ::
#
#   DLB_FOUND - set to true if the library is found
#   DLB_INCLUDE_DIRS - list of required include directories
#   DLB_LIBRARIES - list of libraries to be linked

#=============================================================================
# Copyright 2015 Adrien Devresse <adrien.devresse@epfl.ch>
#
#=============================================================================
# (To distribute this file outside of CMake, substitute the full
#  License text for the above reference.)


# UNIX paths are standard, no need to write.
find_path(DLB_INCLUDE_DIR DLB_interface.h)

find_library(DLB_LIBRARY dlb)
get_filename_component(DLB_LIB_DIR ${DLB_LIBRARY} DIRECTORY)

# Checks 'REQUIRED', 'QUIET' and versions.
include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(DLB
  FOUND_VAR DLB_FOUND
  REQUIRED_VARS DLB_INCLUDE_DIR DLB_LIBRARY DLB_LIB_DIR)
