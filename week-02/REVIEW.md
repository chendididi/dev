# 第 2 周复盘 | Week 2 Review

> 先独立回答，不会的地方可以写“不知道”。
>
> Answer independently first. "I don't know yet" is acceptable.

## 第一步：张量形状与广播 | Step 1: Shapes and Broadcasting

- 日期 / Date:2026.7.14
- 运行结果 / Program output:所有断言通过：X(2,3,4)，切片(4,)，转置(2,4,3)，广播结果(2,3,4)，矩阵乘法结果(2,3,5)；dtype=float32，device=cuda:0。
- 实际用时 / Time spent:1h
- 一个不理解的问题 / One unclear item:转置的具体规则，有什么方便记忆方法

### 问题 1

在 shape `(batch, sequence, hidden)` 中，三个维度分别表示什么？

What does each dimension mean in `(batch, sequence, hidden)`?

我的回答 / My answer:第一个代表几个句子，第二个代表句子长度也就是token数量，第三个代表token对应一个长度为hidden的向量

### 问题 2

为什么 shape 为 `(4,)` 的 `bias` 可以直接加到 shape 为 `(2, 3, 4)` 的 `x` 上？PyTorch 从哪个方向比较维度？

Why can a `(4,)` bias be added to an `(2, 3, 4)` tensor, and from which side does PyTorch compare dimensions?

我的回答 / My answer:PyTorch 从最右侧开始逐维比较。两个维度相等、其中一个为 1，或某一侧缺少该维度时可以广播。(4,) 会按 (1, 1, 4) 与 (2, 3, 4) 对齐

### 问题 3

为什么 `(2, 3, 4) @ (4, 5)` 的结果是 `(2, 3, 5)`？哪些维度被保留，哪个维度参与点积？

Why does `(2, 3, 4) @ (4, 5)` produce `(2, 3, 5)`? Which dimensions remain, and which dimension is contracted?

我的回答 / My answer:2，3，5保留，4与4参与点积，也就是内部维度

## 验收 | Acceptance

- [x] 代码由我独立实现。
- [x] 所有断言通过，输出包含 shape、dtype 和 device。
- [x] 三个问题均由我先独立回答。
- [x] 没有提交密钥、公司信息或本地大文件。

### 第一步审查 | Step 1 Review

结论：通过，2026-07-14。Codex 已在沙箱外复跑并确认：

- 索引、转置、广播和批量矩阵乘法的 shape 断言全部通过；
- 相关张量均为 `torch.float32` 且位于 `cuda:0`；
- 固定随机种子使输出可复现；
- Ruff formatter 与 linter 均通过；
- 广播和矩阵乘法维度的解释达到本步骤要求。

转置记忆：先给轴命名。`x[B, S, H].transpose(1, 2)` 只交换第 1、2 轴，结果是 `x[B, H, S]`，对应关系为 `out[b, h, s] = x[b, s, h]`。

## 第二步：softmax 与数值稳定性 | Step 2: Softmax and Numerical Stability

- 日期 / Date:
- 运行结果 / Program output:
- 实际用时 / Time spent:
- 一个不理解的问题 / One unclear item:

### 问题 1

为什么在计算指数前减去最大值不会改变 softmax 的最终概率？

Why does subtracting the maximum before exponentiation leave softmax probabilities unchanged?

我的回答 / My answer:

### 问题 2

朴素 softmax 为什么会在很大的正数 logits 上产生 Inf 或 NaN？稳定版本如何避免？

Why can naive softmax produce Inf or NaN for large positive logits, and how does the stable version avoid it?

我的回答 / My answer:

### 问题 3

对于 shape 为 `(batch, sequence, vocab)` 的 logits，为什么通常沿最后一维 `vocab` 计算 softmax？

For logits shaped `(batch, sequence, vocab)`, why is softmax usually computed along the final vocabulary dimension?

我的回答 / My answer:

## 第二步验收 | Step 2 Acceptance

- [ ] 代码由我独立实现，未调用 PyTorch softmax 作为实现。
- [ ] Ruff、参考对比、概率和、有限值与平移不变性检查全部通过。
- [ ] 三个问题均由我先独立回答。
- [ ] 没有提交密钥、公司信息或本地大文件。
