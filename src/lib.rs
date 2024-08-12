pub mod rulesets;

use nvim_oxi::api::{self, opts::*, types::*};
use nvim_oxi::{print, Dictionary};

type AnyResult<T = ()> = anyhow::Result<T>;

#[nvim_oxi::plugin]
fn entrypoint() -> nvim_oxi::Result<Dictionary> {
    Ok(Dictionary::new())
}
