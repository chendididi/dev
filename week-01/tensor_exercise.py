import torch


if not torch.cuda.is_available():
    raise RuntimeError("CUDA is required for this exercise")

device = torch.device("cuda")

A = torch.tensor(
    [
        [1, 2, 3],
        [4, 5, 6],
    ],
    dtype=torch.float32,
    device="cpu",
)
B = torch.tensor(
    [
        [1, 2],
        [3, 4],
        [5, 6],
    ],
    dtype=torch.float32,
    device=device,
)

A_gpu = A.to(device)
C = A_gpu @ B

print(f"A: shape={A.shape}, dtype={A.dtype}, device={A.device}")
print(f"A_gpu: shape={A_gpu.shape}, dtype={A_gpu.dtype}, device={A_gpu.device}")
print(f"B: shape={B.shape}, dtype={B.dtype}, device={B.device}")
print(f"C: shape={C.shape}, dtype={C.dtype}, device={C.device}")

expected = torch.tensor(
    [
        [22, 28],
        [49, 64],
    ],
    dtype=C.dtype,
    device=C.device,
)

assert C.shape == (2, 2)
assert C.device.type == "cuda"
assert torch.allclose(C, expected)

C_cpu_numpy = C.cpu().numpy()
print(f"C_cpu_numpy: {C_cpu_numpy}, type={type(C_cpu_numpy)}")
