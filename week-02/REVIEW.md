# 第 2 周复盘 | Week 2 Review

> 先独立回答，不会的地方可以写“不知道”。
>
> Answer independently first. "I don't know yet" is acceptable.

## 第一步：张量形状与广播 | Step 1: Shapes and Broadcasting

- 日期 / Date:
- 运行结果 / Program output:
- 实际用时 / Time spent:
- 一个不理解的问题 / One unclear item:

### 问题 1

在 shape `(batch, sequence, hidden)` 中，三个维度分别表示什么？

What does each dimension mean in `(batch, sequence, hidden)`?

我的回答 / My answer:

### 问题 2

为什么 shape 为 `(4,)` 的 `bias` 可以直接加到 shape 为 `(2, 3, 4)` 的 `x` 上？PyTorch 从哪个方向比较维度？

Why can a `(4,)` bias be added to an `(2, 3, 4)` tensor, and from which side does PyTorch compare dimensions?

我的回答 / My answer:

### 问题 3

为什么 `(2, 3, 4) @ (4, 5)` 的结果是 `(2, 3, 5)`？哪些维度被保留，哪个维度参与点积？

Why does `(2, 3, 4) @ (4, 5)` produce `(2, 3, 5)`? Which dimensions remain, and which dimension is contracted?

我的回答 / My answer:

## 验收 | Acceptance

- [ ] 代码由我独立实现。
- [ ] 所有断言通过，输出包含 shape、dtype 和 device。
- [ ] 三个问题均由我先独立回答。
- [ ] 没有提交密钥、公司信息或本地大文件。
