Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B815358C3EE
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 09:27:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKxB3-0007dw-I9; Mon, 08 Aug 2022 07:27:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1oKxB1-0007dl-QD
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 07:27:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QQLSXoa6vBzyULzMl4Lyj9nCjqEGkXsRm+hwsn6zEQU=; b=M0u8QQPuVJxz3oqjH7xjwX5qAs
 UzkTzqyXmAUGSypB+u5O7wf2Aahh/zhErmT/59i6pwWutgev/0UT9F4sBwr8VzCgkYU2G0c91sdZc
 VTyt/TTpp4/9w9Ydm10HYsGHSIUOkV/Nuah4MbULoz41awGcv282YKer2ECPUzG8khGU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QQLSXoa6vBzyULzMl4Lyj9nCjqEGkXsRm+hwsn6zEQU=; b=X7DgQJeeIYfwzLPpadPgmbt44o
 MnGK5vPBkDlfApXQCxP51P65VR1pH9L8H0GP6ZUgeyXU9g1h2xdYxvVoOqG8RLi2S+GZ4WDR/kK7/
 I8uTLuxjVcrEiul8GLzHsBnVLvmVMhv7FvxN5s41eUuR9Kcyxzq0cnRexdJ0QPCwujCU=;
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKxAx-007Ttz-Lz
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 07:27:51 +0000
Received: by mail-wr1-f41.google.com with SMTP id q30so9804683wra.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Aug 2022 00:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=QQLSXoa6vBzyULzMl4Lyj9nCjqEGkXsRm+hwsn6zEQU=;
 b=zIfr/bkoY3gBzFbNcrWpqiMwyNkPCdKNe/MrbGWontsY0HYT4ssA/dAdUdAabizg5N
 Uq6lRdGpZkVFal9dSokwde86NFzLO36qaFgkAcsGa2pp2AewIMfEoLXQu3hwV5vAuG8G
 C39vpKfHrnW8cOYiiw7CBCJZZC9q5aHcEarv2mzTjuimEMXv1nUY0jtqJjjScfaKJNwV
 mK3ZNzHXGD7a5IwATuzg00KVDZTPOGyV+jsJ/uGzqWgmUoM72zYGndAChyFcW4+wfVH9
 +HmN2rEZhRXBzI8fXgw7tCqm3vx1pJXdI5frgGv4weNWXJu4ZCD6p0sxEE2rFDjtaXTu
 Xa4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=QQLSXoa6vBzyULzMl4Lyj9nCjqEGkXsRm+hwsn6zEQU=;
 b=jh+HVXfMxQtCzXlPgn4E16LkLywsbiR4JI5N3/HtJtmF4+ws+YL8n0q2C8LMPCQoDe
 cg8jznFSBq6enJvmJGRcmHmp1fpxj2bLYtdoKM0QUWY4ZUvJ3ka7mOZmSHHPdgm69u+q
 r1aq6qi8JctM3N79b5afvn598cfUj049Wilf/3Df6UaUKK/fVLgIBRM9vK0R3k++sk7o
 l+e90h0la5mQohTrQJFHz0Iq8vKhPXtmUWN0E/NUNmfgKroex6heT09y50S/GKng87rG
 WHVihetg0dW9fepb+sPmLDP3epFqI1uJRnC1D0qrBiWcgklx2uB8cfwSDxtyKilZaj6Z
 sWPg==
X-Gm-Message-State: ACgBeo0uYYQtb8Dy3AK9JvXSNqJOBnAdICku1BGKDqHxSzOMNvFlhfAR
 2zYu3FQvphmNsQjYx/NFMK81s4MXqCSpKnwm
X-Google-Smtp-Source: AA6agR7xDstvO762NOZfSosYL1/7JmPhrOKTSApy4+c172IbCSOvbAnHnC+5kibn/XzAXiv9QgI0GA==
X-Received: by 2002:a2e:918d:0:b0:25e:c884:6a96 with SMTP id
 f13-20020a2e918d000000b0025ec8846a96mr2674578ljg.157.1659940019211; 
 Sun, 07 Aug 2022 23:26:59 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
 by smtp.gmail.com with ESMTPSA id
 u11-20020ac258cb000000b0048b08124139sm1313796lfo.177.2022.08.07.23.26.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Aug 2022 23:26:58 -0700 (PDT)
Message-ID: <83bbcb33-1f6e-47cc-54bc-e0a5444c3609@linaro.org>
Date: Mon, 8 Aug 2022 09:26:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Tomer Maimon <tmaimon77@gmail.com>
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <10e93907-49ef-a3e6-e0b4-0b3e5f236f44@linaro.org>
 <CAP6Zq1ju4=PSiCuDaCi2NQTniaXBwmv5Qn6LoLayGmiayDCvYg@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP6Zq1ju4=PSiCuDaCi2NQTniaXBwmv5Qn6LoLayGmiayDCvYg@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 07/08/2022 09:51, Tomer Maimon wrote: > Hi Krzysztof, >
 > Thanks for your review. > > On Fri, 5 Aug 2022 at 09:36, Krzysztof Kozlowski
 > <krzysztof.kozlowski@linaro.org> wrote: >> >> On 04/08/2022 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oKxAx-007Ttz-Lz
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
 Benjamin Fair <benjaminfair@google.com>, minyard@acm.org,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 07/08/2022 09:51, Tomer Maimon wrote:
> Hi Krzysztof,
> 
> Thanks for your review.
> 
> On Fri, 5 Aug 2022 at 09:36, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 04/08/2022 20:18, Tomer Maimon wrote:
>>> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
>>> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
>>>
>>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>>
>> Your previous commit adding that compatible was simply wrong and not
>> matching the driver and it is not the first time. I think all Nuvoton
>> patches need much more careful review :(
> Will do and sorry about all the mess...
>>
>> You forgot the fixes tag:
>>
>> Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
> Will add the tag next version.

You received a bit different review from Corey, so to be clear:
1. Your approach is correct, assuming the devices are really compatible.
2. Add a fixes tag and send a v3, to get my ack.

Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
