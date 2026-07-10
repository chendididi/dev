# 第 1 周：建立真实基线 | Week 1: Establish a Baseline

本周不是考试，也不追求高分。目标是看清当前环境和能力缺口，然后只补最重要的一项。

## 第一步：认识环境（已通过）

预计用时：30-45 分钟。

在仓库根目录运行：

```bash
bash tools/check-env.sh
```

脚本只读取版本和硬件信息，不安装软件、不修改配置，也不上传任何数据。

运行后，亲自填写 [REVIEW.md](REVIEW.md)。不需要复制所有输出，只记录：

- Python 与 Git 版本；
- GPU 型号和显存；如果不可访问，则记录原始状态；
- PyTorch 是否安装；
- PyTorch 能否使用 CUDA；
- 一项你看不懂或不确定的信息。

## 求助规则

1. 先写下自己的理解，即使它可能不正确。
2. 报错时保留完整错误信息和执行命令。
3. 可以让 AI 解释概念、指出错误和审查答案，但不要让 AI 直接填写复盘。
4. 通过这一步后，继续下面的第二步。

## 第二步：PyTorch GPU 验证（当前）

预计用时：30-60 分钟。下面命令在仓库根目录执行：

```bash
python3 -m venv .venv
.venv/bin/python -m pip install --upgrade pip
.venv/bin/python -m pip install torch==2.13.0+cu130 --index-url https://download.pytorch.org/whl/cu130
```

这会把 PyTorch 安装在 `.venv/`，不会修改系统 Python。下载 CUDA 运行时需要较大的网络和磁盘空间；这是正常的。无需单独安装完整 CUDA Toolkit，也不需要 `nvcc`，因为 PyTorch wheel 已带有运行所需的 CUDA 组件。

安装完成后运行：

```bash
.venv/bin/python - <<'PY'
import torch

print("PyTorch:", torch.__version__)
print("CUDA runtime:", torch.version.cuda)
print("CUDA available:", torch.cuda.is_available())

if torch.cuda.is_available():
    print("GPU:", torch.cuda.get_device_name(0))
    x = torch.tensor([1.0, 2.0], device="cuda")
    print("GPU result:", (x * x).sum().item())
PY
```

期望看到 `CUDA available: True`、`NVIDIA GeForce RTX 3060 Laptop GPU` 和 `GPU result: 5.0`。将实际输出和一个疑问填入 [REVIEW.md](REVIEW.md)。若安装或验证失败，保留完整错误信息，不要自行尝试多个教程里的修复命令。

<details>
<summary>English version</summary>

This week is a baseline, not an exam. For the first step, run
`bash tools/check-env.sh` from the repository root. The script only reads
software and hardware information; it does not install or upload anything.

Record the Python and Git versions, GPU model and memory (or the unavailable
status), PyTorch availability, CUDA availability, and one unclear item in
[REVIEW.md](REVIEW.md). Write your own explanation before asking AI for review.
The first step has passed. For the current second step, create `.venv` and run
the documented PyTorch GPU verification. Install `torch==2.13.0+cu130` from the
official CUDA 13.0 wheel index. A full CUDA Toolkit or `nvcc` is not needed for
this task because the PyTorch wheel includes its runtime components.

The verification must report CUDA availability, the RTX 3060 device name, and
the GPU result `5.0`. Record the real output and one question in
[REVIEW.md](REVIEW.md); keep the complete error if it fails.

</details>
