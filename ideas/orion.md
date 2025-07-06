# RFC: Orion — A Modular Dart Framework on Top of Shelf

**Author:** Heron Guerrieri  
**Created:** 2025-07-06  
**Status:** Draft  
**Target Version:** 0.1.0  
**Framework:** Orion  
**Language:** Dart

---

## Summary

Orion is a modular web framework built on top of `shelf`, designed to offer a clear, scalable, and extensible structure for building backend applications in Dart. It emphasizes **clarity**, **modularity**, and **explicit behavior**, avoiding abstractions such as code generation or annotation-based (@) systems that obscure implementation details.

---

## Motivation

While Dart offers great language features from both object-oriented and functional programming paradigms, existing backend solutions often rely on:

- Code generation
- Decorator-style annotations (`@`)
- Overly abstracted architecture

These patterns can lead to:

- Hidden control flow
- Hard-to-trace bugs
- Complex onboarding for new developers

Orion aims to solve these issues by providing:

- **Modular architecture** — easy to plug and play features
- **Minimal configuration** — convention-over-configuration without magic
- **Explicit and traceable flow** — all logic visible and debuggable
- **Scalability-first design** — structured to grow in complexity without degrading maintainability

---

## Goals

- **Modular by design**: Every feature is opt-in and composed via modules.
- **No code generation**: All behavior is directly traceable from the source code.
- **Clear routing**: Easy-to-read and configure routes without annotations.
- **Composable middleware**: Leverage Shelf's middleware system in a first-class way.
- **Stateless and testable**: Encourage clean architecture principles and stateless services.
- **Easy bootstrapping**: CLI or minimal code required to get started.

---

## Non-goals

- Supporting annotation-driven or codegen-based configuration.
- Competing with full-stack frameworks like Aqueduct (now deprecated) or Angel.
- Building an opinionated ORM or database abstraction (leave it to external modules).

---


