$.get('latest-orderbooks.json', 'json').then (offers) ->
    for offer in offers
        $('#offers').append "
            <tr class=\"#{offer.exchange}\">
                <td class=\"exchange\" title=\"#{offer.exchange}\">
                    <div class=\"logo\">&nbsp;</div>
                </td>
                <td class=\"price\">#{offer.price}</td>
                <td>#{offer.min_amount}</td>
                <td>#{offer.max_amount}</td>
                <td>#{offer.seller}</td>
                <td>
                    <a href=\"#{offer.link}\" target=\"_blank\" class=\"buy\">
                        Buy
                    </a>
                </td>
            </tr>
        "
    console.log(offers)
