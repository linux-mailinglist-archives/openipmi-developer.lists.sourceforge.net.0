Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 991FC72A6C6
	for <lists+openipmi-developer@lfdr.de>; Sat, 10 Jun 2023 01:36:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1q7leH-0007A4-6A;
	Fri, 09 Jun 2023 23:36:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@aj.id.au>) id 1q7leC-00079N-Qf
 for openipmi-developer@lists.sourceforge.net;
 Fri, 09 Jun 2023 23:36:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tMmYHIDjBqJKDccW2yNNVtw4vNAo2LIKf8v53tnNtqU=; b=E8j1wSwFqR0Dd5KX4Tvb/xQjX5
 +i3YEinG+imVVTbP6qfGxofzW7eHoLMarO+4sPxa0L4PTCmWdUUMu8Pbfh8QVd1zshxmQG+FlGxZx
 BuHopJriD5vi/9bmcQq0aTFr9HZzCxNewqpRPGWnZKuEguh3+zVpazQUp625YCjs6C+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tMmYHIDjBqJKDccW2yNNVtw4vNAo2LIKf8v53tnNtqU=; b=eM9gGOeXqjAmSHeW3EmmVcWqkQ
 IIxknH7C4DlA6waLwYxWaFTbfIRdzMhWHpcjSA2p91Nx4m49NUYxwuHIvp08WRNvkpXriLsIezmHI
 +P1JXq4wXs00mbALBwtMTBme9OBFbTekyoJ4K18XdLMRQPYq9k8FaFiMlkpkexErLiYE=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q7leA-00G2XJ-M8 for openipmi-developer@lists.sourceforge.net;
 Fri, 09 Jun 2023 23:36:00 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id F38FD320090C;
 Fri,  9 Jun 2023 19:19:49 -0400 (EDT)
Received: from imap50 ([10.202.2.100])
 by compute6.internal (MEProxy); Fri, 09 Jun 2023 19:19:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
 :content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm3; t=1686352789; x=1686439189; bh=tM
 mYHIDjBqJKDccW2yNNVtw4vNAo2LIKf8v53tnNtqU=; b=X4PTZzoH3iGrrVTNtV
 nhJ/GIyb/+bCPohzNetpXMJTh9hlF4mV9KAhOFyO8FGeH70usdmfmO3tCqSwl1b3
 GGBTnb806f0IWQAwo4/hSny+AOauDF/LyoBEDS739jKz4qcZMhrFzEljpKmh47Fc
 36MLiH8Zp2gdWOh9rWcN1lHKDUW2eCJvLyrACIENOeOqlwag1dVJ4qVcmeZm78EX
 HzEullvXa1bbJKCngw+AIpbRhQjl6FhIM1d5D797ZzaLRW5Jlyv0HmPAnB0hK7qe
 1Xw5fjIje4NviO5PdDf2DAVwg2a/nk+mi9idfGYPtdkagkwSmbqb2A8gniSAM/vk
 yEOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1686352789; x=1686439189; bh=tMmYHIDjBqJKD
 ccW2yNNVtw4vNAo2LIKf8v53tnNtqU=; b=d8uSvn6R4ktoKCUQpQ/E5FRc/4ifB
 MIMxNdBNR/sLpTyDEmAxObUxukv2u0qQEWn4eJzw+sL+/K9dOdVp/oHwW2ZTpySI
 hDRa48/7ms/B+m6DD1Ac+JwYdooFvC5B7HeMj92f1jYjEJSRszAvDO6zEA2yFlaa
 fcxY8VSH0n/Yrs0AGH4WXmb8w6molmWqhy2dQ3nVEg+lV+FZch6pXmbBz1UgqQDK
 uQNF5ptIj6qhQ5NfeIE7O26zaD8vrMtoCSuDFmk4KsB85RwKFbtVZMS73dG6P2kt
 NZWen4Fa0rCT5UmOu67xhH3q4nLKhmyoBicbhMbxpYA7HKXUuYC0xu8hw==
X-ME-Sender: <xms:lLODZCa8Zf0KsY8GW8HHb1GMOLGhtOA6t6hVWIYWvOk5-iK3Ryp4XA>
 <xme:lLODZFZcWfoKa8I6c-LhlDikpwHcDXLrQJsFd-Ra3S6sRV4Za8WyrLvnJpI2lcZzb
 iM995um_XKFBbRaRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgedtledgvdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
 hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:lLODZM_sqYsK0L437TC1lo4edRi6Yxzcodj7PHrHsQzkWYwx3kiEUQ>
 <xmx:lLODZEo60zelKocOz8RXjUV7UFFdA_KkGXeNuy4IWDhaYvOBx40Ong>
 <xmx:lLODZNoRyq9j5WUBUEsn4oIm_vi_S2P_JLEhKym-fR-lQvEKQhndDQ>
 <xmx:lbODZBenee8DWDfphkM1MGgGHudjwWCdLBSrvc5ZGOn1m5sJDzijNw>
Feedback-ID: idfb84289:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 44ECA1700089; Fri,  9 Jun 2023 19:19:48 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-447-ge2460e13b3-fm-20230525.001-ge2460e13
Mime-Version: 1.0
Message-Id: <778e2930-1678-45bb-a01e-21bf321fb6d8@betaapp.fastmail.com>
In-Reply-To: <20230609140729.64799-1-krzysztof.kozlowski@linaro.org>
References: <20230609140729.64799-1-krzysztof.kozlowski@linaro.org>
Date: Sat, 10 Jun 2023 08:49:27 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
 "Corey Minyard" <minyard@acm.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Joel Stanley" <joel@jms.id.au>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 9 Jun 2023, at 23:37, Krzysztof Kozlowski wrote: >
 Cleanup bindings dropping unneeded quotes. Once all these are fixed, > checking
 for this can be enabled in yamllint. > > Signed-off-by: Krzys [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q7leA-00G2XJ-M8
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: ipmi: aspeed,
 ast2400-kcs-bmc: drop unneeded quotes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Fri, 9 Jun 2023, at 23:37, Krzysztof Kozlowski wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml  | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git 
> a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml 
> b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> index 4ff6fabfcb30..129e32c4c774 100644
> --- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> +++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> @@ -41,7 +41,7 @@ properties:
>        - description: STR register
> 
>    aspeed,lpc-io-reg:
> -    $ref: '/schemas/types.yaml#/definitions/uint32-array'
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>      minItems: 1
>      maxItems: 2
>      description: |
> @@ -50,7 +50,7 @@ properties:
>        status address may be optionally provided.
> 
>    aspeed,lpc-interrupts:
> -    $ref: "/schemas/types.yaml#/definitions/uint32-array"
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>      minItems: 2
>      maxItems: 2
>      description: |
> @@ -63,12 +63,12 @@ properties:
> 
>    kcs_chan:
>      deprecated: true
> -    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    $ref: /schemas/types.yaml#/definitions/uint32
>      description: The LPC channel number in the controller
> 
>    kcs_addr:
>      deprecated: true
> -    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    $ref: /schemas/types.yaml#/definitions/uint32
>      description: The host CPU IO map address
> 
>  required:
> -- 
> 2.34.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
