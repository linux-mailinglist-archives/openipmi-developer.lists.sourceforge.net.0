Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4930F58C876
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 14:39:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oL226-0004qq-U9; Mon, 08 Aug 2022 12:38:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1oL226-0004qe-1d
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 12:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FyiESZhu+E7/BKkttGblDxWjWxD0N7svGStIMfixe6g=; b=g6HxHOHX4cvxk0YOAVVjh7hBGP
 Ot8EQz/D5wP+IvzTUCOlReErpRdFR1Qu/XAm7GjVbDyTcnFOC3C0Dvpop+FQlf9X4F8WNlZpGtMjT
 b+y2aI3RsHTz33mBECn5u0cMYEawfbziNP6GxTBmZu+URIGXT2NA4tsBNaBdU6yiENIs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FyiESZhu+E7/BKkttGblDxWjWxD0N7svGStIMfixe6g=; b=Ufvn1JtY520hgiBq/H0zCCYU2M
 A76gcYzgel4ilwF/NGHWJnFUypTKbSat3bDc7OIdWBg+TZZ87ikdUgdclXLZzmAO34trTl284gtLf
 VxRq+gNM9PhjwamCAw3aPoDQ6pLnf3lVJ1x5VhUczTWHXkHzJYcBgMQmBeWJAhHATFN0=;
Received: from mail-lj1-f170.google.com ([209.85.208.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oL221-007jLK-Tl
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 12:38:57 +0000
Received: by mail-lj1-f170.google.com with SMTP id s9so9667207ljs.6
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Aug 2022 05:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=FyiESZhu+E7/BKkttGblDxWjWxD0N7svGStIMfixe6g=;
 b=rLJ0lyBvsw3HLGnfXzsGvHgYH/J3/z1+3o1/9nl4S8ccnWoz9hcIevwZQK1JZ/sNe/
 L7XKYtQHQPNtFZ684HAhXRWZLmtyQdrge8SXmwUFa7GPh+uwxN7RQ4JM7T4MXd32dy6n
 2HfNMu24H91FXmB/CO6RqWVR3Jqv0FKbhIY5si9CtwtgmxbydI4d5a3gO9eRABgJ/eec
 7tdpV5648hEW6iaDB56qq4iAltVqAOZJ0tVWtD798rY1a41kugkBOtul0GtK3w3g39Cw
 bJKcEbUBXxqrr8X8verT4ayW3dGC/U09kTVTi/HyAeQ6UHSXYozojmeFFQWbsszFVp/m
 Lqxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=FyiESZhu+E7/BKkttGblDxWjWxD0N7svGStIMfixe6g=;
 b=ftaaQ0L5Epx8Llbacv22lFWyVhyeXME5XyImHcjKrEpyN8XhTuAVHsjIOo/poQpUNd
 i44UujFI80tO+304MR2ZdgyqzXjLjGN32UbrRh035uehVvXoNGcnCUs1C1mQdnpyRyDn
 B3KRxF2Ln6BJ/JUvf9/EW4b214HcL6zI7BT34xzN2B3tg3d3S6Q3ei2jkJQco7msUUEi
 edhA5AsZJW+UKHFQrgouxV+SmnxEowQFoBKi1PQoKF19khxdwZoT+zDU5PLS9VRDUjGm
 nseTxN0snPeFaLpu5rZNcDZD8UVrjz0fSwxdxX+3RqOPeVsc4v0/xwDPC6mBF98YS2KW
 QCcQ==
X-Gm-Message-State: ACgBeo3hvTVfQghcpwyI3zF3/XvKKxkISVpSKLNS+g8Qs/uDT5PqUrDq
 fUqJjuj3qC+vGmPygvgeSQSS7A==
X-Google-Smtp-Source: AA6agR6+cdKmIIcwQHHvzpEfmXs0vtGDVCqzuNhHpAMqsPQSHhxfdUwkHa1upr8sME3uKXz3Y+fCRg==
X-Received: by 2002:a2e:921a:0:b0:25e:b171:1f39 with SMTP id
 k26-20020a2e921a000000b0025eb1711f39mr4235389ljg.3.1659962327354; 
 Mon, 08 Aug 2022 05:38:47 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
 by smtp.gmail.com with ESMTPSA id
 19-20020ac24853000000b0048b0176bac6sm1420342lfy.93.2022.08.08.05.38.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Aug 2022 05:38:46 -0700 (PDT)
Message-ID: <937b6737-5d55-2185-a4bc-7535fa6da85c@linaro.org>
Date: Mon, 8 Aug 2022 15:38:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: minyard@acm.org
References: <20220808075452.115907-1-tmaimon77@gmail.com>
 <da83671e-08b9-2d68-e5d3-d9b09c105bb4@linaro.org>
 <20220808122652.GO3834@minyard.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220808122652.GO3834@minyard.net>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 08/08/2022 15:26, Corey Minyard wrote: > On Mon, Aug 08, 
 2022 at 11:11:16AM +0300, Krzysztof Kozlowski wrote: >> On 08/08/2022 09:54,
 Tomer Maimon wrote: >>> Add to npcm845 KCS compatible string a [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.170 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oL221-007jLK-Tl
Subject: Re: [Openipmi-developer] [PATCH v3] dt-binding: ipmi: add fallback
 to npcm845 compatible
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
Cc: devicetree@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, tali.perry1@gmail.com, yuenn@google.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 openipmi-developer@lists.sourceforge.net, jic23@kernel.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 08/08/2022 15:26, Corey Minyard wrote:
> On Mon, Aug 08, 2022 at 11:11:16AM +0300, Krzysztof Kozlowski wrote:
>> On 08/08/2022 09:54, Tomer Maimon wrote:
>>> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
>>> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
>>>
>>> Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
>>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>>
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Ok, I think I understand how this is supposed to work.  It's not
> altogether clear from the device tree documentation.  It says in
> Documentation/devicetree/bindings/writing-bindings.rst:
> 
> - DO make 'compatible' properties specific. DON'T use wildcards in compatible
>   strings. DO use fallback compatibles when devices are the same as or a subset
>   of prior implementations. DO add new compatibles in case there are new
>   features or bugs.

This documentation is short, so it explains what should be done, not
exactly why it should be done. If we wanted "why" this would not be set
of 4 sentences but twice more...

> 
> AFAICT, there are no new features or bugs, just a new SOC with the same
> device.  In general usage I have seen, you would just use the same
> compatible.  

Most of the usages are like shown here. There are several other cases.
It's the same with poor or good code - you will always find both patterns.

> However, if I understand this, that last sentence should say:
> 
>   DO add new compatibles in case there is a new version of hardware with
>   the possibility of new features and/or bugs.
> 
> Also, the term "specific" is, ironically, vague.  Specific to what?

To me it is rather clear. Specific as in first meanings of the word (1,
3, 4 and 5):
https://en.wiktionary.org/wiki/specific

nuvoton,npcm7xx-kcs-bmc would not be definite (allows more meanings),
unique (in terms of devices it expresses), distinctive (as two different
devices use the same) or serving to identify one thing (again - two SoCs).

What other meaning do you think of?

> 
> It would be nice to have something added to "Typical cases and caveats"
> that says:
> 
> - If you are writing a binding for a new device that is the same as, or
>   a superset of another existing device, add a new specific compatible
>   for the new device followed by a compatible for the existing device.
>   That way, if the device has new bugs or new specific features are
>   added, you can add workarounds without modifying the device tree.
> 
> Anyway, I have added this to my tree with your ack.

Fantastic, thanks!


Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
