#!/usr/bin/env bash
set -u

echo "== Core tools / 核心工具 =="
python3 --version 2>&1 || echo "Python: not found / 未找到"
git --version 2>&1 || echo "Git: not found / 未找到"

echo
echo "== GPU / 显卡 =="
if command -v nvidia-smi >/dev/null 2>&1; then
    if ! nvidia-smi \
        --query-gpu=name,memory.total,driver_version \
        --format=csv,noheader; then
        echo "nvidia-smi exists but GPU access failed / 命令存在，但当前环境无法访问 GPU"
    fi
else
    echo "nvidia-smi: not found / 未找到"
fi

echo
echo "== PyTorch / 深度学习环境 =="
python3 - <<'PY'
try:
    import torch
except ImportError:
    print("PyTorch: not installed / 未安装")
else:
    print(f"PyTorch: {torch.__version__}")
    print(f"CUDA available / CUDA 可用: {torch.cuda.is_available()}")
    if torch.cuda.is_available():
        print(f"CUDA device / CUDA 设备: {torch.cuda.get_device_name(0)}")
PY

echo
echo "Read-only check complete / 只读检查完成"
