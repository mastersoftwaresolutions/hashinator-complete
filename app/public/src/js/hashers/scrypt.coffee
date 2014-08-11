define ['jquery'], ($) ->

    (input, callback) ->
        $.post '/hash/scrypt', {input: input}, (resp) -> callback(resp.hash)

