# 第 2 周：模型基础 | Week 2: Model Foundations

## 当前：第二步，实现数值稳定的 softmax

softmax 把一组 logits 转换为概率。朴素计算 `exp(x) / sum(exp(x))` 会在 logits 很大时溢出，因此实际实现需要先减去当前维度的最大值。

创建 `week-02/softmax_exercise.py`，由你独立完成。程序必须：

1. 定义 `stable_softmax(x, dim=-1)`，不能调用 `torch.softmax` 或 `torch.nn.functional.softmax`。
2. 只使用张量运算：沿 `dim` 找最大值并保留该维度，计算 `exp`，再除以沿同一维度的总和。
3. 在 GPU 创建 `float32` logits：`[[1, 2, 3], [1000, 1001, 1002], [-1000, -1001, -1002]]`。
4. 将你的结果与 `torch.softmax(logits, dim=-1)` 比较，使用 `torch.allclose` 断言一致。
5. 断言输出 shape、dtype、device 与输入一致，每行概率和为 1，并且没有 NaN 或 Inf。
6. 额外计算一次朴素版本 `exp(logits) / sum(exp(logits))`，打印它是否包含 NaN 或 Inf，用来观察溢出；不要用朴素版本作为最终结果。
7. 验证平移不变性：`stable_softmax(logits + 5000)` 应与原结果一致。
8. 使用 Ruff 格式化并检查代码，然后运行程序。

命令：

```bash
.venv/bin/ruff format week-02/softmax_exercise.py
.venv/bin/ruff check week-02/softmax_exercise.py
.venv/bin/python week-02/softmax_exercise.py
```

完成后在 [REVIEW.md](REVIEW.md) 填写第二步。遇到错误时先记录是哪一个断言失败，以及对应 tensor 的 shape、dtype、device 和数值范围。

<details>
<summary>已完成步骤 / Completed steps</summary>

第一步“张量形状与广播”已于 2026-07-14 通过：索引、转置、广播和批量矩阵乘法的 CUDA 断言均通过，Ruff 检查通过。

</details>

<details>
<summary>English version</summary>

## Current: Step 2, numerically stable softmax

Implement `stable_softmax(x, dim=-1)` without calling PyTorch's softmax. Subtract
the maximum value along `dim` while retaining that dimension, exponentiate,
and divide by the sum along the same dimension.

Test CUDA float32 logits containing ordinary, very large positive, and very
large negative values. Compare against `torch.softmax`, verify row sums and
tensor metadata, reject NaN/Inf, demonstrate overflow in the naive formula,
and verify that adding 5000 to every logit does not change the stable result.
Format, lint, and run the file with the documented commands, then complete
[REVIEW.md](REVIEW.md).

</details>
