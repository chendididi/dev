# 第 1 周复盘 | Week 1 Review

> 这个文件由学习者本人填写。不会的地方可以写“不知道”。
>
> Fill this file yourself. Writing "I don't know yet" is acceptable.

## 1. 环境结果 | Environment

- 日期 / Date:2026.7.10
- Python 版本 / Python version:3.12.3
- Git 版本 / Git version:2.43.0
- GPU 与显存 / GPU and memory:6144mib
- PyTorch 版本 / PyTorch version:不可用
- CUDA 是否可用 / CUDA available:可用
- 不理解的信息 / One unclear item:mib是什么单位，581.80是什么

## 2. 我的理解 | My Understanding

### 问题 1

Python、PyTorch 和 CUDA 分别负责什么？它们之间是什么关系？

What are Python, PyTorch, and CUDA responsible for, and how are they related?

我的回答 / My answer:python主要完成功能，pytorch则是负责张良计算等，cuda是提供计算的能力，pytorch是由python编写，需要cuda实现

### 问题 2

`nvidia-smi` 能运行，是否一定代表 PyTorch 可以使用 GPU？为什么？

If `nvidia-smi` works, does that guarantee PyTorch can use the GPU? Why?

我的回答 / My answer:不一定，还需要下载cuda？

### 问题 3

为什么后续项目要使用独立的 Python 虚拟环境，而不是把依赖全部安装到系统 Python？

Why should future projects use an isolated Python virtual environment instead
of installing every dependency into the system Python?

我的回答 / My answer:为了实现环境隔离，不同的项目依赖不一样，这样可以为每一个项目配置不同的环境

## 3. 可选复盘 | Optional Reflection

- 我已经确认的事实 / Facts I verified:
- 我原来的错误理解 / A misconception I had:
- 我需要进一步学习的一个概念 / One concept to study next:cuda
- 实际用时 / Time spent:1h



## 4. 验收 | Acceptance

- [x] 环境信息填写完整。/ Environment information is complete.
- [x] 三个问题均由我先独立回答。/ I answered all three questions independently first.
- [x] 没有粘贴密钥、用户名、公司信息或其他隐私内容。/ No secrets or private information are included.

审查状态 / Review status: 已由 Codex 审查，2026-07-10 / Reviewed by Codex, 2026-07-10

## 审查反馈 | Review Feedback

结论：第一步通过。你的虚拟环境解释是准确的；GPU 信息和三个问题都已独立作答。

- `6144 MiB` 约等于 `6 GiB`，是 GPU 显存容量；请补记 GPU 型号 `NVIDIA GeForce RTX 3060 Laptop GPU`；`581.80` 是 NVIDIA 驱动版本。
- Python 是编写控制逻辑的语言；PyTorch 是 Python 调用的张量和深度学习库；CUDA 是 NVIDIA GPU 的计算平台。PyTorch 可以使用 CUDA，但也可以只在 CPU 上运行。
- `nvidia-smi` 正常说明驱动和 WSL GPU 通道可用；当前 PyTorch 尚未安装，因此第一部分的“CUDA 是否可用”应理解为“尚未通过 PyTorch 验证”。PyTorch 还必须安装带 CUDA 支持的版本，并在运行时成功识别 GPU。通常不需要额外安装完整 CUDA Toolkit。
- 下一步只验证 PyTorch GPU，不开始写模型或学习 CUDA kernel。

## 第二步：PyTorch GPU 验证 | Step 2: PyTorch GPU Verification

- PyTorch 版本 / PyTorch version:
- CUDA runtime / CUDA runtime:
- CUDA 是否可用 / CUDA available:
- GPU 名称 / GPU name:
- GPU result:
- 一个不理解的问题 / One unclear item:
- 实际用时 / Time spent:
