local netx=setmetatable({},{__index=net})

do local net=netx

TYPE_COLOR = 255

--
-- Read/Write a boolean to the stream
--
net.WriteBool = net.WriteBit

function net.ReadBool()

	return net.ReadBit() == 1

end

--
-- Read/Write an entity to the stream
--
function net.WriteEntity( ent )

	if ( !IsValid( ent ) ) then
		net.WriteUInt( 0, 16 )
	else
		net.WriteUInt( ent:EntIndex(), 16 )
	end

end

function net.ReadEntity()

	local i = net.ReadUInt( 16 )
	if ( !i ) then return end

	return Entity( i )

end

--
-- Read/Write a color to/from the stream
--
function net.WriteColor( col )

	assert( IsColor( col ), "net.WriteColor: color expected, got ".. type( col ) )

	net.WriteUInt( col.r, 8 )
	net.WriteUInt( col.g, 8 )
	net.WriteUInt( col.b, 8 )
	net.WriteUInt( col.a, 8 )

end

net.ReadVector = function()
	return Vector( net.ReadFloat(), net.ReadFloat(), net.ReadFloat() )
end

net.ReadAngle = function()
	return Angle( net.ReadFloat(), net.ReadFloat(), net.ReadFloat() )
end


net.WriteVector = function( v )

	net.WriteFloat( v.x )
	net.WriteFloat( v.y )
	net.WriteFloat( v.z )

end

net.WriteAngle = function( a )

	a:Normalize()

	net.WriteFloat( a.p )
	net.WriteFloat( a.y )
	net.WriteFloat( a.r )

end

function net.ReadColor()

	local r, g, b, a =
		net.ReadUInt( 8 ),
		net.ReadUInt( 8 ),
		net.ReadUInt( 8 ),
		net.ReadUInt( 8 )

	return Color( r, g, b, a )

end

--
-- Write a whole table to the stream
-- This is less optimal than writing each
-- item indivdually and in a specific order
-- because it adds type information before each var
--
function net.WriteTable( tab )

	for k, v in pairs( tab ) do

		net.WriteType( k )
		net.WriteType( v )

	end

	-- End of table
	net.WriteType( nil )

end

function net.ReadTable()

	local tab = {}

	while true do

		local k = net.ReadType()
		if ( k == nil ) then return tab end

		tab[ k ] = net.ReadType()

	end

end

net.WriteVars =
{
	[TYPE_NIL]			= function ( t, v )	net.WriteUInt( t, 8 )								end,
	[TYPE_STRING]		= function ( t, v )	net.WriteUInt( t, 8 )	net.WriteString( v )		end,
	[TYPE_NUMBER]		= function ( t, v )	net.WriteUInt( t, 8 )	net.WriteDouble( v )		end,
	[TYPE_TABLE]		= function ( t, v )	net.WriteUInt( t, 8 )	net.WriteTable( v )			end,
	[TYPE_BOOL]			= function ( t, v )	net.WriteUInt( t, 8 )	net.WriteBool( v )			end,
	[TYPE_ENTITY]		= function ( t, v )	net.WriteUInt( t, 8 )	net.WriteEntity( v )		end,
	[TYPE_VECTOR]		= function ( t, v )	net.WriteUInt( t, 8 )	net.WriteVector( v )		end,
	[TYPE_ANGLE]		= function ( t, v )	net.WriteUInt( t, 8 )	net.WriteAngle( v )			end,
	[TYPE_COLOR]		= function ( t, v ) net.WriteUInt( t, 8 )	net.WriteColor( v )			end,

}

function net.WriteType( v )
	local typeid = nil

	if IsColor( v ) then
		typeid = TYPE_COLOR
	else
		typeid = TypeID( v )
	end

	local wv = net.WriteVars[ typeid ]
	if ( wv ) then return wv( typeid, v ) end

	error( "net.WriteType: Couldn't write " .. type( v ) .. " (type " .. typeid .. ")" )

end

net.ReadVars =
{
	[TYPE_NIL]		= function ()	return end,
	[TYPE_STRING]	= function ()	return net.ReadString() end,
	[TYPE_NUMBER]	= function ()	return net.ReadDouble() end,
	[TYPE_TABLE]	= function ()	return net.ReadTable() end,
	[TYPE_BOOL]		= function ()	return net.ReadBool() end,
	[TYPE_ENTITY]	= function ()	return net.ReadEntity() end,
	[TYPE_VECTOR]	= function ()	return net.ReadVector() end,
	[TYPE_ANGLE]	= function ()	return net.ReadAngle() end,
	[TYPE_COLOR]	= function ()	return net.ReadColor() end,
}

function net.ReadType( typeid )

	typeid = typeid or net.ReadUInt( 8 )

	local rv = net.ReadVars[ typeid ]
	if ( rv ) then return rv() end

	error( "net.ReadType: Couldn't read type " .. typeid )
end


end



function pac.NetSerializeTable(data)
	local written1 = net.BytesWritten()
	netx.WriteTable(data)
	local written2 = net.BytesWritten()
	if written2==65536 then return nil,"table too big" end
	return written2-written1
end

function pac.NetDeserializeTable()
	return netx.ReadTable()
end