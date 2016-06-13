test_vperm_1:
  #_ REGISTER_IN v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_IN v4 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_IN v5 [00000000, 00000000, 00000000, 00000000]
  vperm v6, v3, v4, v5
  blr
  #_ REGISTER_OUT v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_OUT v4 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_OUT v5 [00000000, 00000000, 00000000, 00000000]
  #_ REGISTER_OUT v6 [00000000, 00000000, 00000000, 00000000]

test_vperm_2:
  #_ REGISTER_IN v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_IN v4 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_IN v5 [01010101, 01010101, 01010101, 01010101]
  vperm v6, v3, v4, v5
  blr
  #_ REGISTER_OUT v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_OUT v4 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_OUT v5 [01010101, 01010101, 01010101, 01010101]
  #_ REGISTER_OUT v6 [01010101, 01010101, 01010101, 01010101]

test_vperm_3:
  #_ REGISTER_IN v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_IN v4 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_IN v5 [11111111, 11111111, 11111111, 11111111]
  vperm v6, v3, v4, v5
  blr
  #_ REGISTER_OUT v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_OUT v4 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_OUT v5 [11111111, 11111111, 11111111, 11111111]
  #_ REGISTER_OUT v6 [11111111, 11111111, 11111111, 11111111]

test_vperm_4:
  # try with > 32b values (should mod)
  #_ REGISTER_IN v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_IN v4 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_IN v5 [21212121, 21212121, 21212121, 21212121]
  vperm v6, v3, v4, v5
  blr
  #_ REGISTER_OUT v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_OUT v4 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_OUT v5 [21212121, 21212121, 21212121, 21212121]
  #_ REGISTER_OUT v6 [01010101, 01010101, 01010101, 01010101]

test_vperm_5:
  #_ REGISTER_IN v4 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_IN v5 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_IN v6 [01020003, 14150001, 1F1C1D1E, 00141518]
  vperm v3, v4, v5, v6
  blr
  #_ REGISTER_OUT v3 [01020003, 14150001, 1F1C1D1E, 00141518]
  #_ REGISTER_OUT v4 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_OUT v5 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_OUT v6 [01020003, 14150001, 1F1C1D1E, 00141518]
  