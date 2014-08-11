define ['jquery'], ($) ->

    (input, callback) ->
        $.post '/hash/sha1', {input: input}, (resp) -> callback(resp.hash)

