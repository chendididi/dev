import torch
print("pytorch:",torch.__version__)
print("cuda_runtime:",torch.version.cuda)
print("CUDA available:", torch.cuda.is_available())
if torch.cuda.is_available():
    print("GPU:", torch.cuda.get_device_name(0))
    x = torch.tensor([1.0, 2.0], device="cuda")
    print("GPU result:", (x * x).sum().item())