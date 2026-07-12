# 第 2 周：张量形状与广播 | Week 2: Tensor Shapes and Broadcasting

## 当前：第一步，理解 Transformer 常见维度

在大模型代码中，张量经常使用 `(batch, sequence, hidden)` 三个维度。当前任务只练习 shape 变化，不开始实现注意力。

创建 `week-02/shape_exercise.py`，由你独立完成。程序必须：

1. 在 GPU 创建 `float32` 张量 `x`，包含 `0` 到 `23`，并 reshape 为 `(2, 3, 4)`。依次把三个维度解释为 batch、sequence、hidden。
2. 取出 `x[0, 1]`，断言其 shape 为 `(4,)`、数值为 `[4, 5, 6, 7]`。
3. 使用转置得到 `x_transposed`，将 sequence 与 hidden 交换，断言 shape 为 `(2, 4, 3)`。
4. 创建 GPU `float32` 向量 `bias = [0.1, 0.2, 0.3, 0.4]`，计算 `y = x + bias`，断言广播后的 shape 仍为 `(2, 3, 4)`。
5. 创建 GPU `float32` 权重 `weight`，shape 为 `(4, 5)`；计算 `z = y @ weight`，断言 shape 为 `(2, 3, 5)`。
6. 打印 `x`、切片、转置结果、`y`、`z` 的 shape、dtype 和 device；所有计算张量必须位于 `cuda:0`。

运行命令：

```bash
.venv/bin/python week-02/shape_exercise.py
```

验收要求：程序无异常、所有断言通过，并在 [REVIEW.md](REVIEW.md) 独立回答三个问题。遇到错误时保留完整输出，先自己定位 shape，再请求帮助。

<details>
<summary>English version</summary>

## Current: Step 1, common Transformer dimensions

Implement `week-02/shape_exercise.py` yourself. Create CUDA float32 tensor `x`
with values 0 through 23 and reshape it to `(2, 3, 4)`, representing batch,
sequence, and hidden dimensions. Verify the slice `x[0, 1]`, transpose the
sequence and hidden axes, add a `(4,)` bias through broadcasting, and multiply
the result by a `(4, 5)` weight matrix.

Assert the expected shapes `(4,)`, `(2, 4, 3)`, `(2, 3, 4)`, and `(2, 3, 5)`.
Print shape, dtype, and device for each result. All computation tensors must be
CUDA float32. Run the file and complete [REVIEW.md](REVIEW.md).

</details>
