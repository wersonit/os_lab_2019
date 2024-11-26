#include <stdint.h>

#ifndef UTFACTORIALS_H
#define UTFACTORIALS_H

struct FactorialArgs
{
  uint64_t begin;
  uint64_t end;
  uint64_t mod;
};

uint64_t MultModulo(uint64_t a, uint64_t b, uint64_t mod);
uint64_t Factorial(const struct FactorialArgs *args);

#endif