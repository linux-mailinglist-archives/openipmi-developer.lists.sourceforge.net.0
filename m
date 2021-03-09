Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE5E331D1C
	for <lists+openipmi-developer@lfdr.de>; Tue,  9 Mar 2021 03:46:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lJSOJ-00087k-Jh; Tue, 09 Mar 2021 02:46:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lJSOI-00087Y-8I
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Mar 2021 02:46:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tpdvc0wIJyQlbESu9uTMwNjhu6BkX05ntP+NLrip8N8=; b=jotGEgO2xgzKUg46eSXxqcS9bs
 1gvdeUl17lGYfDcLI4Fb4v0dsCcKPmN/cg+Sb6uSMMBfEMgtzbCbqIi5KCqUzGzuZ3PFockT+euUG
 W7oTf9MKfRsK+QMbux1nXu2+7iT9X79tlcHxrDHEdhUUcGRlLcYwqWaPaybMMLqh8huY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tpdvc0wIJyQlbESu9uTMwNjhu6BkX05ntP+NLrip8N8=; b=DUCVwmDSx3soPGemB7L8V/Uz6G
 EwYeyQ0qvLdRavpBcASf/gzf65jSdJkykT6Drc6vlgOhBJq4gyMba78Kl7377TXpHhyahH/xLAnP0
 jlE+a+G6mY+JZkk/auZU9XD5EoaMr5KjKTtPGTl6JuXITClCHJm5iDcXfwXgoxRxEk3c=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lJSO6-0002Oc-Uw
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Mar 2021 02:46:33 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6A18658077B;
 Mon,  8 Mar 2021 21:46:17 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Mon, 08 Mar 2021 21:46:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=Tpdvc0wIJyQlbESu9uTMwNjhu6BkX05
 ntP+NLrip8N8=; b=fbbwAutXo3dNbhPjH2Fc1TRDi2WNPtt0PdwmRmCbuKRQKwb
 xQuFJ731mrIMCsLQgutAkbEf70bBP1WGd3mVLmYe6lhIDO4S0c9r6Yqo3JuNySsY
 t/J+2h9QRN7qGNsdZe8JNm9xSQgNkyGPW9CmWugKQY1J9R9n2w8Zx6Uh9KFejqe2
 udZ3LqayR2e/L5fiQEwTS8983sMNoCMV0KeQRejejOKoDTqGuad2OrL+jj6gIeA2
 iA5j0VLgU1GDh/rm4GhTP3gywPbqXMFpzasrCnEO1CbN9DBGiDpOifXIS4j3X0/U
 eZjYArRiIFeLDtrfAosCiYljBtu0buWpaH2qzhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Tpdvc0
 wIJyQlbESu9uTMwNjhu6BkX05ntP+NLrip8N8=; b=AjTM0mIH1z4B0Xh+oM/oxt
 QoP+Sr+ZU+EX78gTuEN+l2i/Snz9ejRcszvXnJr+lTCh3099W0rw0JYDMw5vuteg
 Kj5FUMRKXRHSQR7qJ2euBD0MzEhVMZq/ECyLR9Bw+ERheiPEhpwCpeet9vgD5CER
 J9IDNanmdMsH/iIBt6gQpqMYY1eSu9PnParU9FjiGVmVJeaKy975dKoVoe6iFOsi
 PaW+1a+gSDwV5OXtDq27oNiQJEm/n2tzmRq38q8dliUT8Q9DpydfnVA2arahdSDl
 B8j+Ftqb9wQm7hL1OVjOmvI21NmkwUCVUXuP9UdVUtSjLc50y9xXI95eHEwfIvug
 ==
X-ME-Sender: <xms:d-FGYKvxk6NSN9cSuRTS6hi-JLu0eUiu8dpDVbBEx6sqCk8JaNHTSw>
 <xme:d-FGYPejt-whBncMjC81hZLfrIBSsxX49iCp8bvbev35w4Nv9dY-_xlULMIdQu7bI
 HQMI4LCPnwd6S3djg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudduhedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefguedvfedvgffgudehjeegudefvedufefgveefudetffdvfeeigffg
 jedvkeetnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucevlhhushhtvg
 hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhi
 ugdrrghu
X-ME-Proxy: <xmx:d-FGYFwSlRjhgPZQxeJ519D6v7UCNOZtcj3Ij1BCTVHy6cTJFPts7Q>
 <xmx:d-FGYFPlql9I9BSvNVg_KSslgT6Z201lJcETny7WP08g9NoCGBKwfQ>
 <xmx:d-FGYK_6k-S6NEstvVd7f93XPQFmjBeq0bEIowfTCBkVhq2aWopLjQ>
 <xmx:eeFGYKOMhTmwCBXjdbzOroRCsY3EGwpmWTQTM3N9RYG5LzxwnAr8MQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A3B3FA00068; Mon,  8 Mar 2021 21:46:15 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-206-g078a48fda5-fm-20210226.001-g078a48fd
Mime-Version: 1.0
Message-Id: <0fbc1435-1f0f-4c0e-935f-95874d438fbf@www.fastmail.com>
In-Reply-To: <20210305230710.GA798530@robh.at.kernel.org>
References: <20210219142523.3464540-1-andrew@aj.id.au>
 <20210219142523.3464540-17-andrew@aj.id.au>
 <20210305230710.GA798530@robh.at.kernel.org>
Date: Tue, 09 Mar 2021 13:15:55 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lJSO6-0002Oc-Uw
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_16/19=5D_dt-bindings=3A_?=
 =?utf-8?q?ipmi=3A_Convert_ASPEED_KCS_binding_to_schema?=
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: devicetree@vger.kernel.org, "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 linux-gpio@vger.kernel.org, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tali Perry <tali.perry1@gmail.com>,
 Nancy Yuen <yuenn@google.com>, linux-aspeed@lists.ozlabs.org,
 openipmi-developer@lists.sourceforge.net, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Sat, 6 Mar 2021, at 09:37, Rob Herring wrote:
> On Sat, Feb 20, 2021 at 12:55:20AM +1030, Andrew Jeffery wrote:
> > Given the deprecated binding, improve the ability to detect issues in
> > the platform devicetrees. Further, a subsequent patch will introduce a
> > new interrupts property for specifying SerIRQ behaviour, so convert
> > before we do any further additions.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml | 92 +++++++++++++++++++
> >  .../bindings/ipmi/aspeed-kcs-bmc.txt          | 33 -------
> >  2 files changed, 92 insertions(+), 33 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> > new file mode 100644
> > index 000000000000..1c1cc4265948
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> > @@ -0,0 +1,92 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ASPEED BMC KCS Devices
> > +
> > +maintainers:
> > +  - Andrew Jeffery <andrew@aj.id.au>
> > +
> > +description: |
> > +  The Aspeed BMC SoCs typically use the Keyboard-Controller-Style (KCS)
> > +  interfaces on the LPC bus for in-band IPMI communication with their host.
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - description: Channel ID derived from reg
> > +        items:
> > +          enum:
> > +            - aspeed,ast2400-kcs-bmc-v2
> > +            - aspeed,ast2500-kcs-bmc-v2
> > +            - aspeed,ast2600-kcs-bmc
> > +
> > +      - description: Old-style with explicit channel ID, no reg
> > +        deprecated: true
> > +        items:
> > +          enum:
> > +            - aspeed,ast2400-kcs-bmc
> > +            - aspeed,ast2500-kcs-bmc
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  reg:
> > +    minItems: 3
> > +    maxItems: 3
> > +    description: IDR, ODR and STR register addresses
> 
> items:
>   - description: IDR register
>   - description: ODR register
>   - description: STR register

Oh, neat.

> 
> > +
> > +  aspeed,lpc-io-reg:
> > +    $ref: '/schemas/types.yaml#/definitions/uint32'
> > +    minItems: 1
> > +    maxItems: 2
> 
> A uint32 can only have 1 item. uint32-array perhaps?

That sounds more appropriate.

> 
> 
> > +    description: |
> > +      The host CPU LPC IO data and status addresses for the device. For most
> > +      channels the status address is derived from the data address, but the
> > +      status address may be optionally provided.
> > +
> > +  kcs_chan:
> > +    deprecated: true
> > +    $ref: '/schemas/types.yaml#/definitions/uint32'
> > +    maxItems: 1
> 
> Drop

Ack.

> 
> > +    description: The LPC channel number in the controller
> > +
> > +  kcs_addr:
> > +    deprecated: true
> > +    $ref: '/schemas/types.yaml#/definitions/uint32'
> > +    maxItems: 1
> 
> Drop

Ack.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
