require [
    "jquery"
    "models/hash"
], (
    $
    Hash
) ->

    h = new Hash

    h.on 'change:hash_md5', (m, v) -> $('#md5').text(v)
    h.on 'change:hash_sha1', (m, v) -> $('#sha1').text(v)
    h.on 'change:hash_sha256', (m, v) -> $('#sha256').text(v)
    h.on 'change:hash_scrypt', (m, v) -> $('#scrypt').text(v)

    $('#hashIt').on 'click', -> h.set('input', $('#input').val())



