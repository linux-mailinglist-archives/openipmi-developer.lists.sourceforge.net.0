Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C597958C33C
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 08:23:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKwAg-0002qb-71; Mon, 08 Aug 2022 06:23:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1oKwAe-0002qR-3s
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 06:23:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yxNLL9tpBx91XzWobigk9RDfgExcwH7LpcZxDBrQRTg=; b=k7jsGBdWJIa283vERc1d+fRtcQ
 X2GVFa2a4E7EzIqunQPfBoJBhG5TrIdrqy5asuYYjluRsT6cjeYPK/Aixdop+T05NhF/YdeKZyBPx
 zgnG9YyaIAc0oyM3vKTwwkX+58XCN7Nao0N8IUJNXp45JzSrBRNafg+DbP7ikIuFB+S4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yxNLL9tpBx91XzWobigk9RDfgExcwH7LpcZxDBrQRTg=; b=QSi5RFA75BsmLkH9as8en3t4PO
 4HryZGHO6m0nKQjBYa03HGPqmyZ/LfE3VfooMwSiem1t49siSKoslC3DBpNHm+eue059UXaDdAWwE
 NPrnqpkFlve+9lsfQ669xepHB2jNslaRRcHhv1v8toQcnRG0fbji7tT5v+MIuAVF2sBQ=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKwAb-007RJz-Co
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 06:23:24 +0000
Received: by mail-lf1-f47.google.com with SMTP id e15so11312259lfs.0
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 07 Aug 2022 23:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=yxNLL9tpBx91XzWobigk9RDfgExcwH7LpcZxDBrQRTg=;
 b=nfOgGbBryi+MIHG/k3ir1A8gwTr7wlkFdC3hakFiQ0gMbD5OVVqP93DkFLZfPJ7f29
 5XENF458oipXJgfQ9MOvxEjz+Kb/tP2JAD4stY2Ib0bFt1JrsOhuL4yBb4DirtGPpAwt
 MJoqN7JQ9i/tw0Z2Ccgv3SEPu2vjwrdQCmhkzE5o9oMRvyqn+J0yD3vU34q51HwR9kN8
 WyWMSjmh4BrVwCMCXeADXQrkni7hUdJLgHmOx/ZSzOysr7ur4F4NXi3+2Arjw56Uq76Z
 d+uK9P4eKpzWLZ7pe6uHB0faW+U9L8zwODqNtkFnv9pky6rKypQ8iZrmZ9Krk1ryoUM2
 63EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=yxNLL9tpBx91XzWobigk9RDfgExcwH7LpcZxDBrQRTg=;
 b=pf9AnlV6tzw0e9sFEd15vt54yZVqgo6zid+SzZGwMyQpTOsvDWEagSbZzgH7KY1Ezf
 DRMRlz2Id7LxYBOeQNQS3FCpgw/of38r8ufHqnwnFQ7Cv9mRBU5j8tELeNDSnCAUZ2ql
 NGwHwuVHSRq4ekVbQCkqShJIHcyRoXS4AT9SEGB8SDQZp1o85AVYAXUBzsxhogyC3fa2
 AiIXoeVWq8MWf4rZnvoqddujQCXWYBsdzhYY+86VUVDIwP/z6vZaniZiUS1vfFqGoHOe
 Y8uiExLfT9VXYpoMQAeHSguUHi7NDWCeoZ/KO5GNswTQ3leqsPp0fQZ6HcMQDRkpaPA2
 Fyjw==
X-Gm-Message-State: ACgBeo2AK6/LRf60xmoi16GL0mvjMAgAA0c0kA8Kr+ha9An4sGk1bAh/
 W2IUHSDdD2f37Uxs36kbEzm9jw==
X-Google-Smtp-Source: AA6agR6eKjzRFEDKHgXnXApp+dh1+H6EeF9aURP5fo1sS6KZBA33kjiX17kFxzI/LU/WM4qvhXHf2Q==
X-Received: by 2002:a19:4f56:0:b0:48b:205f:91a9 with SMTP id
 a22-20020a194f56000000b0048b205f91a9mr5652395lfk.543.1659939794838; 
 Sun, 07 Aug 2022 23:23:14 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
 by smtp.gmail.com with ESMTPSA id
 w5-20020a05651234c500b0048af508d99csm1310885lfr.185.2022.08.07.23.23.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Aug 2022 23:23:14 -0700 (PDT)
Message-ID: <cb3c24e7-e207-e114-d256-ddfa45259312@linaro.org>
Date: Mon, 8 Aug 2022 09:23:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: minyard@acm.org, Tomer Maimon <tmaimon77@gmail.com>
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <20220805115827.GG3834@minyard.net>
 <CAP6Zq1gfvEpUF-TKhA8EdJqBtwaVvJR3qxtn=8Li4swHB6sDYQ@mail.gmail.com>
 <20220807121138.GL3834@minyard.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220807121138.GL3834@minyard.net>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 07/08/2022 14:11, Corey Minyard wrote: > On Sun, Aug 07, 
 2022 at 11:03:56AM +0300, Tomer Maimon wrote: >> Hi Corey, >> >> Thanks for
 your comment. >> >> On Fri, 5 Aug 2022 at 14:58, Corey Minyard < [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.47 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oKwAb-007RJz-Co
Subject: Re: [Openipmi-developer] [PATCH v2] dt-binding: ipmi: add fallback
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Benjamin Fair <benjaminfair@google.com>, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 07/08/2022 14:11, Corey Minyard wrote:
> On Sun, Aug 07, 2022 at 11:03:56AM +0300, Tomer Maimon wrote:
>> Hi Corey,
>>
>> Thanks for your comment.
>>
>> On Fri, 5 Aug 2022 at 14:58, Corey Minyard <minyard@acm.org> wrote:
>>>
>>> On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer Maimon wrote:
>>>> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
>>>> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
>>>>
>>>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>>>> index cbc10a68ddef..4fda76e63396 100644
>>>> --- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>>>> +++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>>>> @@ -7,7 +7,7 @@ used to perform in-band IPMI communication with their host.
>>>>  Required properties:
>>>>  - compatible : should be one of
>>>>      "nuvoton,npcm750-kcs-bmc"
>>>> -    "nuvoton,npcm845-kcs-bmc"
>>>> +    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
>>>
>>> This is just wrong.  The compatible is supposed to identify the device,
>>> not the board the device is on.  I think compatible here should be
>>> "npcm7xx-kcs-bmc", and just use that everywhere.  It's fine if that is
>>> used on a board named npcm845.
>> The NPCM8XX is not a board, The Nuvoton NPCM8XX is a fourth-generation
>> BMC SoC device family.
> 
> Ok, but same principle applies.
> 
> If the device is exactly the same, then you would only use one of the
> "npcm7xx-kcs-bmc" and put that in both device trees.  You can use
> "nuvoton,npcm750-kcs-bmc", it's really not that important.  Or even
> "nuvoton,npcm-kcs-bmc"

No, because it is too generic. Compatibles must be specific.

> 
> If the device has a minor difference that can be expressed in a 
> parameter, then create a parameter for it.
> 
> If the device has enough differences that a parameter or two doesn't
> cover it, then you put either nuvoton,npcm750-kcs-bmc or
> nuvoton,npcm750-kcs-bmc in the device tree.  Not both.  Then you need
> two entries in the of_device_id array and you use the data field or
> something to express the difference.

It's quite common to have generic and specific compatibles for
compatible devices and a driver which can match to both of them. I don't
understand where is exactly the problem here?

> 
> Since there appears to be no difference, just put
> "nuvoton,npcm750-kcs-bmc" in the npcm845 and I will drop the patch
> adding all this.  T

Again no, because recommended (also writing bindings document) is always
to have a specific compatible.

> hen a patch can be added saying it applies to both
> the 7xx and 8xx series of BMC SOCs.  If you want to change the name,
> then a patch will be needed for that, but then you will need multiple
> entries in your device tree, but you would not document it as such, as
> there would only be one that applies for this kernel.
> 
> I'm pretty sure the only reason to have muliple compatible entries in a
> device tree is to cover multiple kernels where the name changed.

Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
