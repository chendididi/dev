# 学习路线 | Roadmap

路线的目标不是“看完很多课程”，而是逐步获得可以独立解释、实现和验证的大模型推理系统能力。
具体任务只在到达对应阶段后创建，避免仓库提前膨胀。

## 入职前：8-12 周

| 阶段 | 时间 | 核心目标 | 完成证据 |
| --- | --- | --- | --- |
| **0. 基线（当前）** | 第 1 周 | 看清 Python、Git、PyTorch、GPU 和英文表达基础 | 环境记录、亲手完成的小任务、周复盘 |
| 1. 模型基础 | 第 2-4 周 | 掌握张量、测试、注意力和 Transformer 推理流程 | 自己实现并测试最小注意力模块 |
| 2. 最小推理器 | 第 5-8 周 | 理解 prefill、decode、采样和 KV cache | 自己逐步完成 `mini-infer`，缓存与非缓存结果一致 |
| 3. 服务与测量 | 第 9-12 周 | 学习 batching、请求调度和可靠性能测量 | 可复现的服务实验和第一篇双语技术总结 |

## 入职后：第一年

每周计划投入约 15 小时，优先结合公开知识理解真实工作中遇到的系统问题，但绝不上传公司材料。

| 时间 | 重点 |
| --- | --- |
| 第 1-3 个月 | 熟悉岗位；继续完善推理基础；开始阅读 vLLM 架构 |
| 第 4-6 个月 | 学习 Triton、CUDA、显存层次、continuous batching 和 PagedAttention |
| 第 7-9 个月 | 完成一个有正确性基线的推理优化；尝试首个上游贡献 |
| 第 10-12 个月 | 整理代表作、英文技术写作和大模型系统面试材料 |

## 不在当前主线

- 不同时学习 Python、C、C++、Go、Rust 五门语言。
- 不在单卡推理基础稳定前展开多机训练。
- 不为了填满 GitHub 创建没有测试和解释的小项目。
- C++、CUDA 和分布式知识在实际需要时逐步加入。

完成标准由 [PROGRESS.md](PROGRESS.md) 给出。时间到了但没有通过验收，就继续当前阶段，而不是假装完成。

<details>
<summary>English version</summary>

## Goal

The roadmap develops the ability to explain, implement, and validate LLM
inference systems. Future task directories are created only when their stage
begins.

## Before employment: 8-12 weeks

| Stage | Time | Goal | Evidence |
| --- | --- | --- | --- |
| **0. Baseline (current)** | Week 1 | Assess Python, Git, PyTorch, GPU, and technical English | Environment record, small independent tasks, weekly review |
| 1. Model foundations | Weeks 2-4 | Learn tensors, tests, attention, and Transformer inference | An independently implemented and tested attention module |
| 2. Minimal inference engine | Weeks 5-8 | Understand prefill, decode, sampling, and KV cache | Build `mini-infer` step by step; cached and uncached results agree |
| 3. Serving and measurement | Weeks 9-12 | Learn batching, request scheduling, and sound benchmarking | A reproducible serving experiment and a bilingual technical note |

## First year after employment

- Months 1-3: understand the role, strengthen inference foundations, and read vLLM architecture.
- Months 4-6: study Triton, CUDA, GPU memory, continuous batching, and PagedAttention.
- Months 7-9: complete one correctly measured optimization and attempt an upstream contribution.
- Months 10-12: consolidate a flagship project, English writing, and systems interview material.

Do not study five languages in parallel, begin multi-node training too early, or
create projects only to fill GitHub. Advancement depends on the acceptance gate
in [PROGRESS.md](PROGRESS.md), not the calendar.

</details>
