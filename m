Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7163E58C33F
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 08:24:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKwC6-0002sk-F5; Mon, 08 Aug 2022 06:24:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1oKwBo-0002sO-DA
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 06:24:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OAoNmHHUa0PKL5V24wDfmfVNG28E4Bq7r3iUtf/CBrE=; b=GZ8+J0K0rV51vrm2RRRd+lMe1u
 gNnFFWPe4d0XA5hoCTUlow7c8kQQ0MPMYG0FNgnx/plkDz0CDl7l15pb3U+ZE+eE1ucvT9V58IKuX
 3MpQETBIq3l/nsFeC5EWjRmzA2aVyZn0ouo02+4xXYTEGLvMQQY0YQ6BWaWOn4Nv/Hw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OAoNmHHUa0PKL5V24wDfmfVNG28E4Bq7r3iUtf/CBrE=; b=YZGkyXtc+38vqZEBUwlhZm/qE8
 nAUzIkaPA8BhKCYdtKgsPDzqMs3AwPpTfx3jIEX5FGYFFzFUHPndq7abbS9LlZresgOmZYXS47EQn
 FsriU146q0zDJ6q9VkvrMtTaj8mTYKCFtiYrH9zHlQj16FwfNPID6zWp4pbPNsjuEVZE=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKwBe-0007qL-Mq
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 06:24:32 +0000
Received: by mail-lf1-f44.google.com with SMTP id u1so11241580lfq.4
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 07 Aug 2022 23:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=OAoNmHHUa0PKL5V24wDfmfVNG28E4Bq7r3iUtf/CBrE=;
 b=VUrKVyV6003OFc0VJimc1BldUZ2d4k1+MWNVvrkr3BAa24PPuyQW1vNr/T2BhKciNq
 ayfqaqYmF8wGRn38/2txCmCTtUVVy8/tj07Y2MP1EkhF6SIsF2dKTPzX+iKvZowvxk14
 t5V5waxUfUcqedy/HueYc4w/iWqaLReTJEXd9RGGyEzLO+WYzu0U2eVdvzH8eb9a6PWI
 5EtKCp52osl1xFznd4ceIlPCa3pOhuaQ/7VwOnGNUTLG7d9Bt5jphH7RVj+jhtffNC6T
 732/Oq/msT/6KJIx1CYPxckyIPCN6fQxJPEhzQobNOmUKNF2HMpDE8u4nwPffgjF5bgI
 Rh9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=OAoNmHHUa0PKL5V24wDfmfVNG28E4Bq7r3iUtf/CBrE=;
 b=1rRZBZtA+A9VwnwRJ3aOG/D39odFZcGxHBAezbuGEXVgfpx08XI4JpH4W5MwLPT91V
 pV3gJXfHqkPHLPfavRlXOi+5lssZAHbwD+UI1ywn60fFznHp8aeOBM1gx3QfJrHNSRMz
 BFVNUOsASOcGoHP5/qd/RpcsG8fuDBj4G5m0RAxP/3tJAjJnSNxWTHfhbqWBTmXcqZMj
 ZwPkSkzkSoTy6l4j3Jz1RkQT/C4LWcfPCjDgpglanjc6iOLzilZBL8Thcz07BVaKQ2zB
 pho7/lLWKlYo93U0EE2O4DKjruANF2P16wv4DiXqdm225B4FAciAAI5hOcRZEW82juSx
 o6rg==
X-Gm-Message-State: ACgBeo1/Jgg7ShhfhVCScKGGw/G0IskwjhRUARvMvyfbYWce3iHEFM28
 8huKVpSAqT6tIPG8TdG65IQxTg==
X-Google-Smtp-Source: AA6agR6prZiP/qNX9oqYZNmqTNXmZeF6UVrUNvdf4EHwTJX2GFqoBKKBsc4oes1ezKPjna+niysCZg==
X-Received: by 2002:a05:6512:32c5:b0:48b:969a:9c24 with SMTP id
 f5-20020a05651232c500b0048b969a9c24mr3322429lfg.300.1659939860138; 
 Sun, 07 Aug 2022 23:24:20 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
 by smtp.gmail.com with ESMTPSA id
 k21-20020ac24f15000000b0048ae66976ffsm1311807lfr.47.2022.08.07.23.24.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Aug 2022 23:24:19 -0700 (PDT)
Message-ID: <7d7ee605-9e5d-aa98-23a9-82e0f41ef326@linaro.org>
Date: Mon, 8 Aug 2022 09:24:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Tomer Maimon <tmaimon77@gmail.com>, minyard@acm.org
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <20220805115827.GG3834@minyard.net>
 <CAP6Zq1gfvEpUF-TKhA8EdJqBtwaVvJR3qxtn=8Li4swHB6sDYQ@mail.gmail.com>
 <20220807121138.GL3834@minyard.net>
 <CAP6Zq1iL7okjGU8_-CnrBnRUzjLKPD8FNw_oYso-jbthbeR1iQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP6Zq1iL7okjGU8_-CnrBnRUzjLKPD8FNw_oYso-jbthbeR1iQ@mail.gmail.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 07/08/2022 16:54, Tomer Maimon wrote: > On Sun, 7 Aug 2022
 at 15:11, Corey Minyard <minyard@acm.org> wrote: >> >> On Sun, Aug 07, 2022
 at 11:03:56AM +0300, Tomer Maimon wrote: >>> Hi Corey, >>> >>> [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oKwBe-0007qL-Mq
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

On 07/08/2022 16:54, Tomer Maimon wrote:
> On Sun, 7 Aug 2022 at 15:11, Corey Minyard <minyard@acm.org> wrote:
>>
>> On Sun, Aug 07, 2022 at 11:03:56AM +0300, Tomer Maimon wrote:
>>> Hi Corey,
>>>
>>> Thanks for your comment.
>>>
>>> On Fri, 5 Aug 2022 at 14:58, Corey Minyard <minyard@acm.org> wrote:
>>>>
>>>> On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer Maimon wrote:
>>>>> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
>>>>> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
>>>>>
>>>>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>>>>> ---
>>>>>  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 2 +-
>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>>>>> index cbc10a68ddef..4fda76e63396 100644
>>>>> --- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>>>>> +++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>>>>> @@ -7,7 +7,7 @@ used to perform in-band IPMI communication with their host.
>>>>>  Required properties:
>>>>>  - compatible : should be one of
>>>>>      "nuvoton,npcm750-kcs-bmc"
>>>>> -    "nuvoton,npcm845-kcs-bmc"
>>>>> +    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
>>>>
>>>> This is just wrong.  The compatible is supposed to identify the device,
>>>> not the board the device is on.  I think compatible here should be
>>>> "npcm7xx-kcs-bmc", and just use that everywhere.  It's fine if that is
>>>> used on a board named npcm845.
>>> The NPCM8XX is not a board, The Nuvoton NPCM8XX is a fourth-generation
>>> BMC SoC device family.
>>
>> Ok, but same principle applies.
>>
>> If the device is exactly the same, then you would only use one of the
>> "npcm7xx-kcs-bmc" and put that in both device trees.  You can use
>> "nuvoton,npcm750-kcs-bmc", it's really not that important.  Or even
>> "nuvoton,npcm-kcs-bmc"
> If we use "nuvoton, npcm-kcs-bmc" we should take care of backward dts
> compatibility, and I am not sure we like to change NPCM KCS driver.
>>
>> If the device has a minor difference that can be expressed in a
>> parameter, then create a parameter for it.
>>
>> If the device has enough differences that a parameter or two doesn't
>> cover it, then you put either nuvoton,npcm750-kcs-bmc or
>> nuvoton,npcm750-kcs-bmc in the device tree.  Not both.  Then you need
>> two entries in the of_device_id array and you use the data field or
>> something to express the difference.
>>
>> Since there appears to be no difference, just put
>> "nuvoton,npcm750-kcs-bmc" in the npcm845 and I will drop the patch
>> adding all this.  Then a patch can be added saying it applies to both
>> the 7xx and 8xx series of BMC SOCs.  If you want to change the name,
>> then a patch will be needed for that, but then you will need multiple
>> entries in your device tree, but you would not document it as such, as
>> there would only be one that applies for this kernel.
> 
> It little bit confusing to use nuvoton,npcm750-kcs-bmc that are
> related to NPCM7XX for NPCM8XX KCS.
> We can use the generic name "nuvoton, npcm-kcs-bmc" as you suggested

No, please don't. It will be NAKed. :)

> above but we should take care of backward dts compatibility, and I am
> not sure we like to change NPCM KCS driver.
> 
> We had a disscation with Arnd, Arnd asked us to use a fallback as we
> did here if NPCM8XX device module is similar to NPCM7XX module:
> https://lore.kernel.org/lkml/20220522155046.260146-5-tmaimon77@gmail.com/
> 
> I think we should use a fallback to describe the NPCM8XX KCS in the
> dt-binding document.


Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
