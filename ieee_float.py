#!/usr/bin/env python3

sizeof_double = 64
sizeof_exponent_d = 11
sizeof_mantissa_d = 52

sizeof_float = 32
sizeof_exponent_f = 8

def repr_float(bits):
    diff = sizeof_float - len(bits) 
    if diff < 0:
        raise ValueError("bits is longer than sizeof_float={sizeof_float}")
    bits = ['0']*diff + bits
    # print(len(bits))
    s = bits[0]
    e = bits[1:1+sizeof_exponent_f]
    m = bits[1+sizeof_exponent_f:]

    mantissa_value = mantissa_to_float(m)
    # print(f"e={e}")
    exp = int(''.join(e), 2)
    exp_with_offset = exp-127
    print(f"e = {''.join(e)}, exp = {exp}, exp_with_offset = {exp_with_offset}")
    print(f"Mantissa: {''.join(m)}, value = {mantissa_to_float(m)}")
   # print(f"bits = {bits}")
    value = 2**exp_with_offset * mantissa_value
    print(f"Value = {value}")

def repr_double(bits):
    diff = sizeof_double - len(bits) 
    if diff < 0:
        raise ValueError("bits is longer than sizeof_double={sizeof_double}")
    bits = ['0']*diff + bits
    s = bits[0]
    e = bits[1:1+sizeof_exponent_d]
    m = bits[1+sizeof_exponent_d:]
    mantissa_value = mantissa_to_float(m)
    # print(f"e={e}")
    exp = int(''.join(e), 2)
    exp_with_offset = exp-1023
    print(f"e = {''.join(e)}, exp = {exp}, exp_with_offset = {exp_with_offset}")
    print(f"Mantissa: {''.join(m)}, value = {mantissa_to_float(m)}")
    # print(f"bits = {bits}")
    value = 2**exp_with_offset * mantissa_value
    print(f"Value = {value}")

def swap_endianness(h):
    if len(h) == 8:
        return h[6:8] + h[4:6] + h[2:4] + h[0:2]
    if len(h) == 16:
        return = h[14:16] + h[12:14] + h[10:12] + h[8:10] + h[6:8] + h[4:6] + h[2:4] + h[0:2]
    raise ValueError("Hex string must be 8 or 16 digits")

def mantissa_to_float(m):
    s = 1
    i = 1
    for bit in m:
        if bit == '1':
            s += 2**(-i)
        i += 1
    return s

def test(h, swap=False):
    print(f"================ h = 0x{h} ====================")
    if swap:
        h = swap_endianness(h)
    # print(h)
    d = int(h,16)
    # print(d)
    bits = list(bin(d)[2:]) # [2:] to remove the leading '0b'
    # print(bits)

    repr_double(bits)

def test_f(h, swap=False):
    print(f"================ h = 0x{h} ====================")
    if swap:
        h = swap_endianness(h)
    # print(h)
    d = int(h,16)
    # print(d)
    bits = list(bin(d)[2:]) # [2:] to remove the leading '0b'
    # print(bits)

    repr_float(bits)

test('40563851e0000000') # Correct double representation

test('c400000000000000') # double converted from float to double
test('00000000e0000000')

test('42b1c28f00000000') # float converted from double to float
test('0000000000000000')
test_f('42b1c28f')       # Correct float representation
test_f('e0000000')
