---@meta

socket = {}

--- This function is a shortcut that creates and returns a TCP client object connected to a remote address at a given port.
--- Optionally, the user can also specify the local address and port to bind (locaddr and locport)
---@param addr number # Address to connect to
---@param port number # Port to connect to
---@param laddr number? # Local address to bind to
---@param lport number? # Local port to bind to
---@return table # client TCPClient object. Nil if error
---@return string? # error Error string if the previous return was nil, else nil
function socket.connect6(addr, port, laddr, lport) end

--- Creates and returns an IPv4 TCP master object.
--- A master object can be transformed into a server object with the method listen (after a call to bind) or into a client object with the method connect.
--- The only other method supported by a master object is the close method.
---@return table # New IPv4 TCP Master Object, or nil if error
---@return string? # The error message, or nil if no error
function socket.tcp() end

--- Creates and returns an unconnected IPv4 UDP object.
--- Unconnected objects support the sendto, receive, receivefrom, getoption, getsockname, setoption, settimeout, setpeername, setsockname, and close methods.
--- The setpeername method is used to connect the object.
--- Note: The UDP object returned will have the option "ipv6-v6only" set to true.
---@return table # New IPv6 UDP master object, or nil in case of error.
---@return string? # The error string if errored, else nil
function socket.udp6() end

--- This function is a shortcut that creates and returns a TCP client object connected to a remote address at a given port.
--- Optionally, the user can also specify the local address and port to bind (locaddr and locport), or restrict the socket family to "inet" or "inet6".
--- Without specifying family to connect, whether a tcp or tcp6 connection is created depends on your system configuration.
---@param addr number # Address to connect to
---@param port number # Port to connect to
---@param laddr number? # Local address to bind to
---@param lport number? # Local port to bind to
---@param family string? # Socket family, either "inet" or "inet6".
---@return table # client TCPClient object. Nil if error
---@return string? # error Error string if the previous return was nil, else nil
function socket.connect(addr, port, laddr, lport, family) end

--- This function is a shortcut that creates and returns a TCP client object connected to a remote address at a given port.
--- Optionally, the user can also specify the local address and port to bind (locaddr and locport)
---@param addr number # Address to connect to
---@param port number # Port to connect to
---@param laddr number? # Local address to bind to
---@param lport number? # Local port to bind to
---@return table # client TCPClient object. Nil if error
---@return string? # error Error string if the previous return was nil, else nil
function socket.connect4(addr, port, laddr, lport) end

--- Creates and returns an IPv6 TCP master object.
--- A master object can be transformed into a server object with the method listen (after a call to bind) or into a client object with the method connect.
--- The only other method supported by a master object is the close method.
--- Note: The TCP object returned will have the option "ipv6-v6only" set to true.
---@return table # New IPv6 TCP Master Object, or nil if error
---@return string? # The error message, or nil if no error
function socket.tcp6() end

--- Creates and returns an IPv4 TCP master object.
--- A master object can be transformed into a server object with the method listen (after a call to bind) or into a client object with the method connect.
--- The only other method supported by a master object is the close method.
---@return table # New IPv4 TCP Master Object, or nil if error
---@return string? # The error message, or nil if no error
function socket.tcp4() end

--- Creates and returns an unconnected IPv4 UDP object.
--- Unconnected objects support the sendto, receive, receivefrom, getoption, getsockname, setoption, settimeout, setpeername, setsockname, and close methods.
--- The setpeername method is used to connect the object.
---@return table # New IPv4 UDP master object, or nil in case of error.
---@return string? # The error string if errored, else nil
function socket.udp4() end

--- Creates and returns an unconnected IPv4 UDP object.
--- Unconnected objects support the sendto, receive, receivefrom, getoption, getsockname, setoption, settimeout, setpeername, setsockname, and close methods.
--- The setpeername method is used to connect the object.
---@return table # New IPv4 TCP master object, or nil in case of error.
---@return string? # The error string if errored, else nil
function socket.udp() end
