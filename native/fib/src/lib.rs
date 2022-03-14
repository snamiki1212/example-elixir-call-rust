#[rustler::nif]
fn fib(num: i64) -> i64 {
    if num <= 1 {
        num
    } else {
        fib(num - 2) + fib(num - 1)
    }
}

rustler::init!("Elixir.FibByRust", [fib]);
