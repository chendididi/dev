# 第 1 周：建立真实基线 | Week 1: Establish a Baseline

## 状态：已通过

第 1 周已于 2026-07-12 完成。下面保留第三步的任务规格，作为可复查的学习记录。

## 第三步：完成第一个张量练习（已通过）

目标：亲手理解张量的 `shape`、`dtype`、`device`，以及数据如何在 CPU 和 GPU 之间移动。

### 1. 补齐 NumPy

在仓库根目录运行：

```bash
.venv/bin/python -m pip install numpy
```

之前的警告是因为 PyTorch 支持与 NumPy 互相转换，但当前虚拟环境没有安装 NumPy。警告源码中的 `device="cpu"` 是 PyTorch 内部定义 `.cpu()` 转换方法，不代表你的测试张量位于 CPU；复跑已经确认测试张量实际位于 `cuda:0`。

### 2. 自己创建练习文件

创建 `week-01/tensor_exercise.py`，不要让 AI 生成实现。程序必须完成下面的要求：

1. 创建 CPU `float32` 张量 `A`，形状为 `(2, 3)`，元素依次为 `1` 到 `6`。
2. 创建 GPU `float32` 张量 `B`，形状为 `(3, 2)`，内容为 `[[1, 2], [3, 4], [5, 6]]`。
3. 将 `A` 移到 GPU，命名为 `A_gpu`；保留原来的 CPU 张量 `A`。
4. 在 GPU 上计算 `C = A_gpu @ B`。
5. 分别打印 `A`、`A_gpu`、`B`、`C` 的 shape、dtype 和 device。
6. 使用 `assert` 验证 `C` 的形状是 `(2, 2)`、设备类型是 `cuda`，数值为 `[[22, 28], [49, 64]]`。
7. 将 `C` 移回 CPU 并转换成 NumPy 数组，打印数组及其 Python 类型。

运行命令：

```bash
.venv/bin/python week-01/tensor_exercise.py
```

### 3. 验收

- 程序正常退出，没有 NumPy 警告和断言失败。
- `A` 的 device 是 `cpu`，`A_gpu`、`B`、`C` 的 device 是 `cuda:0`。
- `C` 的结果是 `[[22, 28], [49, 64]]`。
- NumPy 数组位于 CPU，并在 [REVIEW.md](REVIEW.md) 独立回答三个问题。

遇到问题时，保留命令和完整错误。可以让我解释报错或审查你的代码，但先自己完成第一次尝试。

<details>
<summary>已完成步骤 / Completed steps</summary>

1. 环境检查：确认 Python 3.12.3、Git 2.43.0 和 RTX 3060 Laptop GPU 6 GiB。
2. PyTorch GPU 验证：确认 PyTorch 2.13.0+cu130、CUDA 13.0、`cuda:0` 和 GPU 张量计算。

</details>

<details>
<summary>English version</summary>

## Status: Passed

Week 1 was completed on 2026-07-12. The task specification remains below as a
reviewable learning record.

## Step 3: First tensor exercise

Install NumPy with `.venv/bin/python -m pip install numpy`, then implement
`week-01/tensor_exercise.py` yourself.

Create CPU float32 tensor `A` with shape `(2, 3)` and values 1 through 6. Create
GPU float32 tensor `B` with shape `(3, 2)` and values `[[1, 2], [3, 4], [5, 6]]`.
Move `A` to the GPU as `A_gpu`, retain the original CPU tensor, and compute
`C = A_gpu @ B` on the GPU.

Print the shape, dtype, and device of all four tensors. Add assertions for the
shape `(2, 2)`, CUDA device, and values `[[22, 28], [49, 64]]`. Move `C` back
to the CPU, convert it to a NumPy array, and print the value and Python type.
Run the file with `.venv/bin/python week-01/tensor_exercise.py`, then answer the
three questions in [REVIEW.md](REVIEW.md).

</details>
