define ['jquery'], ($) ->

    (input, callback) ->
        $.post '/hash/sha256', {input: input}, (resp) -> callback(resp.hash)

