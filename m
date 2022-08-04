Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F93589F2B
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Aug 2022 18:12:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oJdSX-0003rW-Bu; Thu, 04 Aug 2022 16:12:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1oJdSW-0003rN-3l
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Aug 2022 16:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NOia1B38YE3Whq97iXD6BLxAeWDOa4nd+CQScRkgm7A=; b=hs1IqOei1i0Y7PJOPElTP7Eyl8
 LVOfJy7PG7L2n5+W96tVbBooRsK+vjeULTM6DQS5xGmrwNjr9pqwHrRhFQQoa8x0QVBuJYcCN/k5i
 aSXih+ZOr7R3TwBAjpA9149jyIlzs5BIgVvXt026g5Red3fKYHmniVy3OC/+SWy67DJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NOia1B38YE3Whq97iXD6BLxAeWDOa4nd+CQScRkgm7A=; b=gH2EJm2HT9Zvx0XZFtVWfVerGu
 yRgVIjCbZogHITgT2UKsFEbij6bT/VQW7AEo9VJTNsglyYFLmAndr2lPD8kJNwB+b/2mtD+21EYUn
 ciI6yAzv6vZ2jtB0Y70aT0yKi1/faIzdRLeJpp2DEJhc95DtRoTYDZjao/9wztruMaYE=;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oJdSS-0006wR-1A
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Aug 2022 16:12:27 +0000
Received: by mail-lf1-f54.google.com with SMTP id d14so19628895lfl.13
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 04 Aug 2022 09:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=NOia1B38YE3Whq97iXD6BLxAeWDOa4nd+CQScRkgm7A=;
 b=rs7UDamBA2ETIgqoEJ5UAtg+BNM2bPzkhj4hOO6lGU3TvE9gF9YSlRQ9scPbctefiZ
 eKbDnpnxMmEjpzzxX83prKVG87t2t2tAamwh8ihOP6jUZbR3blOX7a83wHc757Jip77I
 mvYvrMWGGwSAnPyom/zmEquyINUEF3HLmaY4CKmUoM6/1hfoLFRIr45QxsWp3quVqs/8
 KkztRGvKgtE0a5tM470mSB1sZUun3vitkm0rSyCa6E3BIyzfT7OGAn1DmSO+VNFtRaRk
 UOTDNbUd6GbLwYE2iUwhAgYLfDKt/bY2OIxUnIwMIvVR7nIw69i89bQPokzTVrcY1obI
 Z+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=NOia1B38YE3Whq97iXD6BLxAeWDOa4nd+CQScRkgm7A=;
 b=dMzxy/QSe8OLk5J2icQzizDBzK8JSdNPWL9XW3gUmLaBt3J+F/y2j28NFR0SXOuXbj
 fpa+1kISWAKUVGKFevItYHd8qIoxX5Y6hGMD86F5QwkoVFHXCCrNP00wdnlav0WstatI
 HmOCgT6n0i9Ojl5E32usTDKpdSRnsH6wtmscRJak5IOh6gZubN/aEhK5hMoK+A32HaCC
 ifcO32pQqx05nUGev8bCTxB0GDIapxHtzM/tuD5whnayePzIs6SlSokJd+i6gLuYzE2I
 QVscK6IhhcKt1AZnst0JrPLGxWM8xjT561ZoeSxIrgpmPNXDZG2JlwUgb+ufyO34DZbM
 zHRg==
X-Gm-Message-State: ACgBeo2v17t+w21IT5QKMTWlRK6Jerkn2ggiAxpFjYTBYfr2DU5A34Rt
 UablKRwawdOHZM1TTlP11mJx8O2LJThF9gBJmv8=
X-Google-Smtp-Source: AA6agR7JVLWDvIVNg6U27naCjDABIHZmPrY0O7mtkyZhQfdguRWg/PygUQvQMY4Rm9fX93k5cxNZAw==
X-Received: by 2002:a05:651c:211d:b0:25e:4d0b:9ebe with SMTP id
 a29-20020a05651c211d00b0025e4d0b9ebemr717397ljq.121.1659626064031; 
 Thu, 04 Aug 2022 08:14:24 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
 by smtp.gmail.com with ESMTPSA id
 x6-20020a2e9c86000000b0025e59a76742sm157631lji.14.2022.08.04.08.14.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Aug 2022 08:14:23 -0700 (PDT)
Message-ID: <6c1570c5-bdf4-21bd-ce0f-6bc5513c5dae@linaro.org>
Date: Thu, 4 Aug 2022 17:14:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
 tali.perry1@gmail.com, joel@jms.id.au, venture@google.com, yuenn@google.com,
 benjaminfair@google.com, jic23@kernel.org, minyard@acm.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <20220804145516.217482-1-tmaimon77@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220804145516.217482-1-tmaimon77@gmail.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 04/08/2022 16:55, Tomer Maimon wrote: > Add to npcm845
 KCS compatible string a fallback to npcm750 KCS compatible > string. It's
 easily visible in the code what you are doing, so instead you must explain
 why you are doing it. 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.54 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oJdSS-0006wR-1A
Subject: Re: [Openipmi-developer] [PATCH v1] dt-binding: ipmi: add fallback
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
Cc: devicetree@vger.kernel.org, openbmc@lists.ozlabs.org,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 04/08/2022 16:55, Tomer Maimon wrote:
> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> string.

It's easily visible in the code what you are doing, so instead you must
explain why you are doing it.

Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
