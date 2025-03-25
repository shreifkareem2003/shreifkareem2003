# تحديث النظام
sudo apt update && sudo apt upgrade -y

# تثبيت Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# التحقق من التثبيت
rustc --version
cargo --version

# إعداد البيئة
echo 'source $HOME/.cargo/env' >> ~/.bashrc
source ~/.bashrc

# تثبيت Soundness CLI
curl -sSL https://raw.githubusercontent.com/soundnesslabs/soundness-layer/main/soundnessup/install | bash
source ~/.bashrc

# تثبيت وتحديث Soundness
soundnessup install
soundnessup update

# إنشاء مفتاح جديد
soundness-cli generate-key --name my-key
