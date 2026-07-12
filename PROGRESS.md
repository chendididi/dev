# 当前进度 | Current Progress

最后更新：2026-07-12
当前阶段：**第 2 周 - 模型基础**
完成状态：**第 1 周已通过；正在学习张量形状与广播**

## 当前一步

**亲手完成 shape、索引、转置、广播和批量矩阵乘法练习。**

1. 阅读 [week-02/README.md](week-02/README.md) 的当前任务。
2. 自己创建并实现 `week-02/shape_exercise.py`。
3. 运行程序并填写 [week-02/REVIEW.md](week-02/REVIEW.md)。

### 验收条件

- [ ] `shape_exercise.py` 由自己实现，没有 AI 生成的答案代码。
- [ ] 索引、转置、广播和矩阵乘法的 shape 均通过断言。
- [ ] 所有计算在 `cuda:0` 上完成，dtype 保持 `float32`。
- [ ] 能独立解释 batch、sequence、hidden 三个维度及广播规则。

完成后再解锁 softmax 与数值稳定性练习。

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

Last updated: 2026-07-12
Current stage: **Week 2 - Model foundations**
Status: **Week 1 passed; tensor shapes and broadcasting in progress**

## Current Step

Read the current task in [week-02/README.md](week-02/README.md), implement
`week-02/shape_exercise.py` yourself, run it, and complete
[week-02/REVIEW.md](week-02/REVIEW.md).

Acceptance requires correct indexing, transpose, broadcasting, and batched
matrix-multiplication shapes on CUDA with independent written explanations.

</details>
