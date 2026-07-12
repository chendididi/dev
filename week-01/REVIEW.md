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

- PyTorch 版本 / PyTorch version:2.13.0+cu130
- CUDA runtime / CUDA runtime:13.0
- CUDA 是否可用 / CUDA available:true
- GPU 名称 / GPUname:rtx3060 laptop GPU
- GPU result:5.0
- 一个不理解的问题 / One unclear item:/home/chendi2721/dev/.venv/lib/python3.12/site-packages/torch/_subclasses/functional_tensor.py:368: UserWarning: Failed to initialize NumPy: No module named 'numpy' (Triggered internally at /__w/pytorch/pytorch/torch/csrc/utils/tensor_numpy.cpp:84.)
  cpu = _conversion_method_template(device=torch.device("cpu"))出现这个报错是为什么，为什么这里device又说是cpu？
- 实际用时 / Time spent:1min

### 第二步审查 / Step 2 Review

结论：通过，2026-07-12。Codex 已在同一 `.venv` 中复跑并确认：

- PyTorch `2.13.0+cu130`，CUDA runtime `13.0`；
- `torch.cuda.is_available()` 为 `True`；
- 实际设备为 `NVIDIA GeForce RTX 3060 Laptop GPU`，测试张量位于 `cuda:0`；
- GPU 数值结果为 `5.0`，系统 Python 仍未安装 PyTorch。

NumPy 警告不是 CUDA 失败。PyTorch 在导入时注册了张量转 CPU 和 NumPy 的转换能力，但虚拟环境缺少 NumPy；源码中的 `device="cpu"` 是转换方法的定义，不是测试张量的实际设备。

## 第三步：第一个张量练习 | Step 3: First Tensor Exercise

- NumPy 版本 / NumPy version:
- 运行结果 / Program output:
- 实际用时 / Time spent:

### 问题 1

调用 `A_gpu = A.to("cuda")` 后，原来的 `A` 在哪里？为什么要保留两个变量？

After `A_gpu = A.to("cuda")`, where is the original `A`, and why keep two variables?

我的回答 / My answer:

### 问题 2

为什么形状 `(2, 3)` 与 `(3, 2)` 的矩阵相乘后，结果形状是 `(2, 2)`？

Why does multiplying matrices with shapes `(2, 3)` and `(3, 2)` produce `(2, 2)`?

我的回答 / My answer:

### 问题 3

为什么 CUDA 张量需要先移到 CPU，才能转换为普通 NumPy 数组？

Why must a CUDA tensor move to the CPU before conversion to a regular NumPy array?

我的回答 / My answer:
