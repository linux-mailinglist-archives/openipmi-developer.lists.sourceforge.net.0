Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2549D58C339
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 08:21:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKw8M-0000Qw-RX; Mon, 08 Aug 2022 06:21:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1oKw8L-0000Qi-H6
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 06:21:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XC78ZDlakVYcKsRbmvJPak0U0EpBMvZ3QPItIdCOy78=; b=az11tyQZuQuTJwb25wUffOOfi2
 I09WBb1uc11P7gFmRrN4wzXEBhMr4qbShyrY4fZ3qmyydOwkYst9RpTIIZWEuqmpEccZUlpCQGcJM
 ce0BcxSH3kp4qQDJHKkImOY80DPQcHJetHa6RckgQZoORvG7vqbFtnH87gvQlmZ1rin8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XC78ZDlakVYcKsRbmvJPak0U0EpBMvZ3QPItIdCOy78=; b=bn2KksWy1jb9cjfypNRaQNRMe8
 EIaOCD3Hzc1JQFH7W37hKTWKo75sU3exUxeOCpeeMGvNutPVdnQeZFQM/SMqX2yf2Bux3bG5QXEjV
 BQkXmv2RcnxQQsAEbozyUnDSgiVKW0D11dajRtHfeI9yWKb0lGQNuoYdz2pHVSGasotM=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKw8F-0007dW-Ts
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 06:21:00 +0000
Received: by mail-lf1-f49.google.com with SMTP id x19so2952898lfq.7
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 07 Aug 2022 23:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=XC78ZDlakVYcKsRbmvJPak0U0EpBMvZ3QPItIdCOy78=;
 b=EkjnZok9jUlLyEZhGeMG8MpZ5jVm25V3QfaxyB7EEziQ1nzFwpQuKMJXpXqDfLkSEK
 Ttjgw74JkvtZMtQcYpbJWwkol5uPP5rU9jqMFsHixR7GxAD6dSnEOW9v8ttIkTIuqUN9
 OwXHsMK5Y0dgOyWKRRmOh1GEooU+a+xOYFS12Um9U04RHc2Wyn1uEqc3msvmOBHnuWCt
 UpGHuCT3B6orPTTaJI6aNdixX6fz4itlx9m2BeFowvzA72dEcA6J987m0qM32cfRTig+
 OJUq1E+xvsPyKkXvmqTL5AXD/JlkjEyXC2A0Gn0En+8hEgea8JzkGvZhCr2h/3mQafAF
 PFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=XC78ZDlakVYcKsRbmvJPak0U0EpBMvZ3QPItIdCOy78=;
 b=toH4qTuD4Q+IMynf+3OgFZYfDOXMA+eI2t5XIWmeoAF1rR4mv7vt2S4R6ERhsbA9e8
 EbJsK0h0xFeMqFqD4w1Uflp30m9jKtnHqJIR5cQxJ6tqDZ57LpAgZ/8EUJf/EHyjUqPJ
 rJ6oh+pxFPsrcV+lRvLlCncNFTJweYQWgAyArKXGEN4otod/m+zib61kGZsfbZBOfsC3
 yOFCPpemISA50fioShec92QdBoI2Viss7eKRhlHyybqpkKMkA7UFyuytXNZNAm/a+hyG
 9k3d3m5BT77kERFou8+R1vsew3lbZif8n6pkqYOohIvoJM/lYUfwKfgPtpMF0tKLEgIS
 P8lQ==
X-Gm-Message-State: ACgBeo1gO83K1fdD2/V5rdBE2SKSEUgNmn7u1K7hd0DaIdW++SjjVqvk
 CpXvOfm90+HTvh+hXnNRPWXIhw==
X-Google-Smtp-Source: AA6agR7OZmOpXS7+02tNqFitUFXXGQkqNUYoDp/ZzRjdPwPpDTOkj/3epSojRdpeY2k8fI2W5HiwSw==
X-Received: by 2002:a05:6512:2023:b0:48a:f7e5:8ca2 with SMTP id
 s3-20020a056512202300b0048af7e58ca2mr6500767lfs.592.1659939649359; 
 Sun, 07 Aug 2022 23:20:49 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
 by smtp.gmail.com with ESMTPSA id
 f37-20020a0565123b2500b0048b29b24761sm1310605lfv.91.2022.08.07.23.20.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Aug 2022 23:20:48 -0700 (PDT)
Message-ID: <09264520-15fc-fd35-c1d6-9e9d0230ea4a@linaro.org>
Date: Mon, 8 Aug 2022 09:20:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: minyard@acm.org, Tomer Maimon <tmaimon77@gmail.com>
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <20220805115827.GG3834@minyard.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220805115827.GG3834@minyard.net>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 05/08/2022 13:58, Corey Minyard wrote: > On Thu, Aug 04, 
 2022 at 09:18:00PM +0300, Tomer Maimon wrote: >> Add to npcm845 KCS compatible
 string a fallback to npcm750 KCS compatible >> string becuase [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.49 listed in wl.mailspike.net]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oKw8F-0007dW-Ts
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
Cc: devicetree@vger.kernel.org, benjaminfair@google.com, avifishman70@gmail.com,
 venture@google.com, openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, yuenn@google.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, openipmi-developer@lists.sourceforge.net,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 05/08/2022 13:58, Corey Minyard wrote:
> On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer Maimon wrote:
>> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
>> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
>>
>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>> index cbc10a68ddef..4fda76e63396 100644
>> --- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>> +++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>> @@ -7,7 +7,7 @@ used to perform in-band IPMI communication with their host.
>>  Required properties:
>>  - compatible : should be one of
>>      "nuvoton,npcm750-kcs-bmc"
>> -    "nuvoton,npcm845-kcs-bmc"
>> +    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
> 
> This is just wrong.  The compatible is supposed to identify the device,
> not the board the device is on.  I think compatible here should be
> "npcm7xx-kcs-bmc", and just use that everywhere.  It's fine if that is

No, because you propose to use wildcards as compatible which is not
correct. Compatibles must be specific.

Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
