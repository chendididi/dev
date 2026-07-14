# 当前进度 | Current Progress

最后更新：2026-07-14
当前阶段：**第 2 周 - 模型基础**
完成状态：**张量形状与广播已通过；正在学习 softmax 数值稳定性**

## 当前一步

**亲手实现数值稳定的 softmax，并解释为什么要减去最大值。**

1. 阅读 [week-02/README.md](week-02/README.md) 的第二步。
2. 自己创建并实现 `week-02/softmax_exercise.py`。
3. 运行程序并填写 [week-02/REVIEW.md](week-02/REVIEW.md)。

### 验收条件

- [ ] `stable_softmax` 没有调用 `torch.softmax` 或 `F.softmax`。
- [ ] 普通值与极大值输入均和 `torch.softmax` 对齐，且没有 NaN/Inf。
- [ ] 每一行概率和为 1，shape、dtype 和 CUDA device 保持不变。
- [ ] 能解释减最大值、归一化维度和朴素实现溢出的原因。

完成后再解锁注意力分数与 mask 练习。

## 总进度

| 阶段 | 状态 |
| --- | --- |
| 第 1 周：基线 | **已通过** |
| 第 2-4 周：模型基础 | **进行中** |
| 第 5-8 周：最小推理器 | 未开始 |
| 第 9-12 周：服务与测量 | 未开始 |
| 入职后第一年 | 未开始 |

<details>
<summary>English version</summary>

Last updated: 2026-07-14
Current stage: **Week 2 - Model foundations**
Status: **Tensor shapes and broadcasting passed; stable softmax in progress**

## Current Step

Read Step 2 in [week-02/README.md](week-02/README.md), implement
`week-02/softmax_exercise.py` yourself, run it, and complete
[week-02/REVIEW.md](week-02/REVIEW.md).

Acceptance requires a manually implemented stable softmax that matches the
PyTorch reference, stays finite for large logits, preserves tensor metadata,
and is supported by independent written explanations.

</details>
