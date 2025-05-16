# cppchat-libs

External dependencies for [cppchat](https://github.com/takiido/cppchat), including `libclang` headers and the shared library (`libclang.so`) tracked via Git LFS.

## 📦 Contents

- `libclang/include/clang-c/` – C headers for libclang
- `libclang/lib/libclang.so` – Shared object (tracked with Git LFS)

## 🛠 Usage in cppchat

After cloning `cppchat`, initialize submodules and pull LFS-tracked files:

```bash
git submodule update --init --recursive
git lfs install
git lfs pull
