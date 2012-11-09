class A

end


class B < A
	include M1
	include M2
end

class C < B
	include M3

end

module M1

end

module M2

end

module M3

end