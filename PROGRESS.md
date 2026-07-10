# 当前进度 | Current Progress

最后更新：2026-07-10  
当前阶段：**第 1 周 - 基线**  
完成状态：**环境检查已通过；正在验证 PyTorch GPU**

## 当前一步

**创建独立 Python 环境，安装并验证可用 GPU 的 PyTorch。**

1. 阅读 [week-01/README.md](week-01/README.md) 的“第二步：PyTorch GPU 验证”。
2. 严格按其中命令创建 `.venv`、安装 PyTorch 并运行验证代码。
3. 在 [week-01/REVIEW.md](week-01/REVIEW.md) 填写“第二步”中的实际输出与一个不理解的问题。

### 验收条件

- [ ] `.venv` 已创建，并且系统 Python 没有被安装 PyTorch。
- [ ] PyTorch 版本包含 `+cu130`，且 `torch.cuda.is_available()` 输出 `True`。
- [ ] 验证代码显示 `NVIDIA GeForce RTX 3060 Laptop GPU`，并在 GPU 上得到数值结果 `5.0`。
- [ ] 已记录实际输出和一个仍不理解的问题。

完成后再进入下一步：第一个 PyTorch 张量练习。练习代码和目录现在不创建。

## 总进度

| 阶段 | 状态 |
| --- | --- |
| 第 1 周：基线 | 进行中 |
| 第 2-4 周：模型基础 | 未开始 |
| 第 5-8 周：最小推理器 | 未开始 |
| 第 9-12 周：服务与测量 | 未开始 |
| 入职后第一年 | 未开始 |

<details>
<summary>English version</summary>

Last updated: 2026-07-10  
Current stage: **Week 1 - Baseline**  
Status: **Environment check passed; PyTorch GPU verification in progress**

## Current Step

Read the "Step 2: PyTorch GPU verification" section in
[week-01/README.md](week-01/README.md), create `.venv`, install the documented
PyTorch build, run the verification code, and record the real output in
[week-01/REVIEW.md](week-01/REVIEW.md).

Acceptance requires a `+cu130` PyTorch build, CUDA availability, the RTX 3060
device name, and the expected GPU tensor result. The next step is a first
PyTorch tensor exercise, but its code and directory will not be created until
this step is reviewed.

</details>
