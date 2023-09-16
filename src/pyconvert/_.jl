"""
    module _pyconvert

Implements `pyconvert`.
"""
module _pyconvert

using .._Utils: _Utils as Utils
using .._Py
using .._Py: @autopy, C, getptr, incref, pynew, PyNULL, pyisnull, pydel!, pyisint, iserrset_ambig, pyisnone, pyisTrue, pyisFalse, pyfloat_asdouble, pycomplex_ascomplex, pyisstr, pystr_asstring, pyisbytes, pybytes_asvector, pybytes_asUTF8string, pyisfloat, pyisrange, pytuple_getitem, unsafe_pynext, pyistuple, pydatetimetype, pytime_isaware, pydatetime_isaware, _base_pydatetime, _base_datetime, errmatches, errclear
using Dates: Date, Time, DateTime, Millisecond

include("pyconvert.jl")
include("rules.jl")

function __init__()
    C.with_gil() do 
        init_pyconvert()
    end
end

end
