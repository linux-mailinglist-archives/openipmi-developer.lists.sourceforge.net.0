Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D2558C342
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 08:26:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKwD6-00078J-Ag; Mon, 08 Aug 2022 06:25:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1oKwD5-00078A-SA
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 06:25:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z8c+nGdXCtSyoS1Lq3ADyegDLTS/6+jKQLvmXALH/Tg=; b=E4MCnbftDHfGUBpuDdQvU+7oWT
 8rPGPRJ7M3Y0MQigM1OPqBvAF+ar/UJuAJYZYImsV7Ld63j4/TcRCRPDtzbHzpDCU6jWmkvXLUfFT
 04BRV9IZ4S5JVjQf7CscrF0Xx6oS0NuNqcAHZc6Xoz6H+WTwdN8qu6z3VN/cPGsSQElk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z8c+nGdXCtSyoS1Lq3ADyegDLTS/6+jKQLvmXALH/Tg=; b=EFMyKKwHJsbytZBhWpqaXFgzr4
 8+f52QfsjqEF9/+B7mFt9g8P9StHCtxDTshG6+NDm5k0WP9NAfyOMvjLeRj9yp66bpUW0/Jl1NUgJ
 wMbHQxsJXKFLya+9dpEsiSFwhHdpTa26tN8ksYKWlM4uTokKxUC4wb5z+QS6AFzuvjaA=;
Received: from mail-lf1-f52.google.com ([209.85.167.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKwD2-0007tq-C6
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 06:25:55 +0000
Received: by mail-lf1-f52.google.com with SMTP id u1so11245170lfq.4
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 07 Aug 2022 23:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=z8c+nGdXCtSyoS1Lq3ADyegDLTS/6+jKQLvmXALH/Tg=;
 b=cJ7S3O7sbSq0E4BszRrgR7uv+r9M045/EES38w0uQaZiNBs2uKIqlSiVWMqhtsNl9/
 itLxj+59UKFlN60rtEGfxqlyLhJioBURBdTwHjEN7GRNVLQ4ww3twgBF3v9S3RE2Q3IE
 Bh/T88wn1WaROlaPieJ0zkkxpxeJP4cCJw16F7x9tifxGWppDW2codpsAwgbaPPh6yFR
 zxtM06H12XfYWCvzjxC01KxZu/9U4AQdaHGNjMsfauuE96xlZGgRN7ld4M5jlKcJVbg8
 r/2vcpSlnnlbupZ4NrUoRhoWNLr31m3RLJtzJLCdU2XGtslrdF7xNYYP+njmrJz4wRLs
 gP2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=z8c+nGdXCtSyoS1Lq3ADyegDLTS/6+jKQLvmXALH/Tg=;
 b=ljFo8PV4BAGtwQXd/YdFbM3MDwFBPgGi4aiaJpm8PXVowqr5GPMueKm1l+/Wvo66ND
 V1XmcMCRmlrNqhxq33sxyzaFVN1LlEnNO1FszqE9HJkOcXLaQ97rc1kPQF2nIBIr23mI
 fjR8CPgn4chhsa2tKYeKK1TOD7kR/S6q7rr1wNyzBH8mIidPJ9vAst8MpAW4xNdeboKD
 /27v1WpZrEgekyxu5iju6vZpuxV5sG4UrXX7RqmnlQELw3tSXFiRCyu4zeGlFi0oMKOd
 7VV5y2IDGPFVi0yXDmRMYVKWJzCmeuH3F6r9Z2etBnK4Di49rkF1BxmYA5zZHWVAqf/6
 cb9g==
X-Gm-Message-State: ACgBeo1Ci3s9LdV6CBJC4w9TQ43+RUe/IpIYxCGkq8t2ASsUGVUPq3JG
 2YTQ746QrR/0T4ZBIcPo+cAyVQ==
X-Google-Smtp-Source: AA6agR4LICjSd+r7ACtHJpR5eKFuof/7wXOtfdE8s4zpr4yPJmEhRJ4wrJHcmZoo/I65oE0Xt/czcw==
X-Received: by 2002:a19:7b1d:0:b0:48a:f0f2:cd with SMTP id
 w29-20020a197b1d000000b0048af0f200cdmr6311176lfc.533.1659939945853; 
 Sun, 07 Aug 2022 23:25:45 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
 by smtp.gmail.com with ESMTPSA id
 g25-20020ac24d99000000b0048b052a7980sm1307779lfe.168.2022.08.07.23.25.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Aug 2022 23:25:45 -0700 (PDT)
Message-ID: <c5458546-8000-bd7f-8526-2ad4716ff30f@linaro.org>
Date: Mon, 8 Aug 2022 09:25:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: minyard@acm.org, Tomer Maimon <tmaimon77@gmail.com>
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <20220805115827.GG3834@minyard.net>
 <CAP6Zq1gfvEpUF-TKhA8EdJqBtwaVvJR3qxtn=8Li4swHB6sDYQ@mail.gmail.com>
 <20220807121138.GL3834@minyard.net>
 <CAP6Zq1iL7okjGU8_-CnrBnRUzjLKPD8FNw_oYso-jbthbeR1iQ@mail.gmail.com>
 <20220807160545.GM3834@minyard.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220807160545.GM3834@minyard.net>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 07/08/2022 18:05,
 Corey Minyard wrote: >> We had a disscation
 with Arnd, Arnd asked us to use a fallback as we >> did here if NPCM8XX device
 module is similar to NPCM7XX module: >> https://lore.ker [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oKwD2-0007tq-C6
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

On 07/08/2022 18:05, Corey Minyard wrote:
>> We had a disscation with Arnd, Arnd asked us to use a fallback as we
>> did here if NPCM8XX device module is similar to NPCM7XX module:
>> https://lore.kernel.org/lkml/20220522155046.260146-5-tmaimon77@gmail.com/
>>
>> I think we should use a fallback to describe the NPCM8XX KCS in the
>> dt-binding document.
> 
> I'm ok with that option.  I guess I should have mentioned it.  Add
> nuvoton,npcm-kcs-bmc to the driver's of_device_id table. 

To be clear - NAK. It's not a specific compatible, therefore it is not
appropriate at all.

> Then use that
> in that compatible string in the device tree.  Leave the 750 compatible
> string in the table for backwards compatibility.
> 
> There's no point in having a bunch of those strings if they are all the
> same.  If a new one comes out that is different, we can handle that when
> the time comes.\
There is a point. It's exactly how we do in all DT bindings. It is
recommended by writing bindings document.

Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
