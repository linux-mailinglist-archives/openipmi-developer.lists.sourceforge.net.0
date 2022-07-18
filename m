Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9445784E4
	for <lists+openipmi-developer@lfdr.de>; Mon, 18 Jul 2022 16:11:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oDRTC-0002K5-DF; Mon, 18 Jul 2022 14:11:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1oDRTB-0002Js-6G
 for openipmi-developer@lists.sourceforge.net; Mon, 18 Jul 2022 14:11:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QGPckwIqmYC0GGeLNsoZO9ZfM0x0N4ESwTfdOVnfbdo=; b=hOgslOHiUAuDgF+PXyXgAOf8xU
 jDXdSA1NDZa5NriWzfu1ANWs/UWEHToI+brmRx2yJ9OSXMgYRi9Tt2wLYkqAPvZlhsN38vZ7UcKZT
 JIyCUeypv8k0wGs18gxn28MbIY8Kn8drvLMBuTit5rSII0C3Wk8/apx4krAUtckiy/Co=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QGPckwIqmYC0GGeLNsoZO9ZfM0x0N4ESwTfdOVnfbdo=; b=JwEGM2KB6lJ24sGGfCK6cax1RS
 k6MMGWYs12QVR566cjhFQMBRfTWKaHDZP61puSkrm+UPmDd0t5gHxQ8NzfpW9QPwWeTJYZKdCwwM2
 mGinOHthE+oMZ2wOERyy3WzzAYGrapFuUtt+GLyFEWatQECW7Oa6sBaJ+AHR1EWPpLhE=;
Received: from mail-lf1-f48.google.com ([209.85.167.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oDRT8-0000Ts-Vu
 for openipmi-developer@lists.sourceforge.net; Mon, 18 Jul 2022 14:11:32 +0000
Received: by mail-lf1-f48.google.com with SMTP id bf9so19494579lfb.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 18 Jul 2022 07:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=QGPckwIqmYC0GGeLNsoZO9ZfM0x0N4ESwTfdOVnfbdo=;
 b=f3ntLRVwskz3ZYyc2FJn8KOqs8b6ND5mDfh/7JZFWOq5l7KWLXKWX9A9rKeTa5Ij4k
 7JGNN4tCQOemtel+6gbrSKA5gp4HIM2qxMMw+tS0YV/5naByFOtIryM0FC9tuNFVTvbr
 Jrdds9O/F2AzeJevAMT6zuZXRuHiK+SpaTUkfIndiTuqomSVPxeatvzTOEZ6jO/E85kH
 TBDEEb5ZqoeeM8vt0G2FyfX2kYWk6aetO28bczKUfx/RZ61pMkGe8W0OA4X7xbilIUhA
 xNuI8calWwk6BChdv3oBhEsOCtCz5qqbICQC/cNoPm+zTJT1HvDsiK8N1OEWdA+5O5YT
 mUlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=QGPckwIqmYC0GGeLNsoZO9ZfM0x0N4ESwTfdOVnfbdo=;
 b=QGrSgiH8ieEKzDjzMt+LJ26tVy3eitQcZVfh2/dyI4wvRTwTfCgT+Y1gVSXN6BItEa
 uBwNbuDdKcE655gNzeoZXPreagYVI7NLu9VdIsBeLsOs1TD0qxb0qP1Cv7nt9CHHgewo
 ZLwYWl/4wELGQ/5DnVeiTxCA8F9PDrc7z6Mw1bynzp7TAnDRGLTmwAfn39czRDshb7tz
 JHJAB/zHXRw7ya0gbMc/RNoxlma42iGtyW5Y7+UiwUBKyl6nYyW9+SwoOYXnvVRDteA4
 u0GcIApWgf+SqN0XMcMAPK3ZUdCRD8XRSVuPZZDvtFgHQmNOP4QKnwjYPTKJeVYo7OvC
 sZaw==
X-Gm-Message-State: AJIora+TAYe2MW2RlcSiwwtwgPe0p7HHL4btonn/jMsA8wj5mHPapo4+
 6kUu6XnIjTWVjt5NSNKrpwiHe28cRnq2gKm3
X-Google-Smtp-Source: AGRyM1tzhjki38V3oaMBPTSxXFp3nFxykyZ41PEs8Iaz+PAeQSFVS2lALcibNLEz/hiYCRucx9zy4w==
X-Received: by 2002:a05:651c:1986:b0:25d:a125:eee2 with SMTP id
 bx6-20020a05651c198600b0025da125eee2mr8375312ljb.488.1658151841639; 
 Mon, 18 Jul 2022 06:44:01 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no.
 [89.162.31.138]) by smtp.gmail.com with ESMTPSA id
 e13-20020ac25cad000000b00489cc0dd59esm2606599lfq.90.2022.07.18.06.44.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Jul 2022 06:44:01 -0700 (PDT)
Message-ID: <27939c76-161d-1bd4-0a2e-ec21681e0548@linaro.org>
Date: Mon, 18 Jul 2022 15:43:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
 tali.perry1@gmail.com, joel@jms.id.au, venture@google.com, yuenn@google.com,
 benjaminfair@google.com, jic23@kernel.org, minyard@acm.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <20220717121124.154734-1-tmaimon77@gmail.com>
 <20220717121124.154734-2-tmaimon77@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220717121124.154734-2-tmaimon77@gmail.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 17/07/2022 14:11, Tomer Maimon wrote: > Add a compatible
 string for Nuvoton BMC NPCM845 KCS and modify NPCM KCS > description to
 support
 all NPCM BMC SoC. > > Signed-off-by: Tomer Maimon <tmaimon77 [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.48 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oDRT8-0000Ts-Vu
Subject: Re: [Openipmi-developer] [PATCH v1 1/2] dt-bindings: ipmi: Add
 npcm845 compatible
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

On 17/07/2022 14:11, Tomer Maimon wrote:
> Add a compatible string for Nuvoton BMC NPCM845 KCS and modify NPCM KCS
> description to support all NPCM BMC SoC.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
