locals {
    string  = {
        cat = "meow"
        dog = "woof"
        cow = "moo"
    }
}

resource "scratch_string" "this" {
    for_each = local.string

    in = each.value

    description = format("Key: %s, Value: %s", each.key, each.value)
}
