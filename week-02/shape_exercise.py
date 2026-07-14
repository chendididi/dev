import torch

torch.manual_seed(42)
if not torch.cuda.is_available():
    raise RuntimeError("CUDA is required for this exercise")
device = torch.device("cuda")
X = torch.arange(
    0,
    24,
    dtype=torch.float32,
    device=device,
).reshape(2, 3, 4)
X_0_1 = X[0, 1]
expected = torch.tensor(
    [4, 5, 6, 7],
    dtype=torch.float32,
    device=device,
)
assert X_0_1.shape == (4,)
assert torch.allclose(X_0_1, expected)
X_transposed = X.transpose(1, 2)
assert X_transposed.shape == (2, 4, 3)
bias = torch.tensor(
    [0.1, 0.2, 0.3, 0.4],
    dtype=torch.float32,
    device=device,
)
y = X + bias
assert y.shape == (2, 3, 4)
weight = torch.rand(4, 5, dtype=torch.float32, device=device)
z = y @ weight
assert z.shape == (2, 3, 5)


def show(name, value):
    print(f"{name} = \n{value}")
    print(f"shape = {value.shape}")
    print(f"dtype = {value.dtype}")
    print(f"device = {value.device}")
    print()


show("X", X)
show("X_0_1", X_0_1)
show("X_transposed", X_transposed)
show("y", y)
show("z", z)


def tensor_cuda_dtype(**tensors):
    for name, tensor in tensors.items():
        assert tensor.dtype == torch.float32, f"{name}dtype 错误"
        assert tensor.device.type == "cuda", f"{name}device 错误"


tensor_cuda_dtype(
    X=X,
    X_0_1=X_0_1,
    X_transposed=X_transposed,
    y=y,
    z=z,
    bias=bias,
    weight=weight,
)
