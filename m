Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9341458A5F0
	for <lists+openipmi-developer@lfdr.de>; Fri,  5 Aug 2022 08:37:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oJqxH-0007CU-NM; Fri, 05 Aug 2022 06:37:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1oJqxF-0007CO-JX
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Aug 2022 06:37:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FfYvonlafX3BzC9FTm8GHcqEd0hunBjPCQINuMxo2ew=; b=EM+uH/dxWg8svol9FvpF+9cPTs
 eWB3uDJn2lz9ozRCWEdRbemUpDUDq9mnZEs3tPVr2sD3SDPgnim1nwCV8rErHLQdbzd5OCBBAOlza
 mEO4Y3mX5tnzGcYjtdijt85fTNtFYZH8UP6+F5YZLmDGe2Wbm2yuxV/aHJ8DN6W8nahY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FfYvonlafX3BzC9FTm8GHcqEd0hunBjPCQINuMxo2ew=; b=evC7Wtr+Ryk6Ni8zrnUSy82NXg
 fb07/25Y64iAiTVc3y1VPQApRBqw9HdsdXXpYM94GhQVSopCdRfSTrmQAio5/RiGqNtw8Uv1Wsb50
 jZ/M7C+Xx2ELFtFCHyp/U/u7kfxEHrtCqiF9O+4LepmMIVqre9Uo9vWKDXa6gfDC+/xY=;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oJqwt-00039z-Gn
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Aug 2022 06:36:56 +0000
Received: by mail-lf1-f54.google.com with SMTP id c17so2138032lfb.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 04 Aug 2022 23:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=FfYvonlafX3BzC9FTm8GHcqEd0hunBjPCQINuMxo2ew=;
 b=mm4Z1yEIIfoA6xaiVC2oO4ScLt5H5u3UcwmAkGnb46WTbZkOvOiT3ai/s8Jgt1DvHu
 TMfupJwg82ceo7urGrZlYF/gmDkvuyNy0YPd/STyVX/jy1PJ1Eo9pwFbNmiRBcisBAO1
 DpnfmaDpngGmJRGeTIy/hYv3GnHpjmbBaVbcabTwzzacODP7GvEUKNl33a4fHDCFmRZu
 NqgXzI0ifl5+r0ceXSIGHRvR10qWW1PtnE0uyGVugLabBxuK12xdIb+VHlEM9+SpWdAU
 Q0POb7jcDyySSHxIdqI/kLe/P+aYxfgSW5Kw4RjCwvwzsxkKe90GDSmmJej3tGIVukLA
 IX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=FfYvonlafX3BzC9FTm8GHcqEd0hunBjPCQINuMxo2ew=;
 b=jVtqMo0sCvh+UCVC0zxIIvmY0Sq4n02QB16hAR4BhzAeFNLOmiWZ5vF1gg3aDVhBOc
 4ihWuk2PCQg9+sJLSskaaD/kp4IGS4SRS6s0sZVUMkt47GgAHqqc17eap0WL+4YbJFRK
 yhHcvhJcop5oriyi+LW5fc/vg9rDDFIUyjAM/6ngmST1l1YIylroXxVaFJh7t1V+xgo/
 X39uBORmXS16QedvbppJ0pzl9f+WlsQxBaOw08+R8d10yl/pYJjppGYENEJ0ljd6WAkP
 PXs5MCiyuw/A4BGOOpkG4D0ZxA2g4WSFBqM5oAnxd4sPR+8w4ew/d/ggeAUCjmApTlly
 scKw==
X-Gm-Message-State: ACgBeo1dC7Sfy4u6jCvcdDaYcQJY9tNefD99JKfgunwhAaTdcx09yRuM
 dRYtYlcOqJ/wxi0CbTU6nTDfmQ==
X-Google-Smtp-Source: AA6agR4SjqFpMzckvMkeXKWrrBXPyBG5d1+ymIlgWt2fIsTamlb8H3yn42SuIf/7SHZyb5RhQXW7+Q==
X-Received: by 2002:a05:6512:2185:b0:482:b4f0:f23 with SMTP id
 b5-20020a056512218500b00482b4f00f23mr2027840lft.31.1659681396871; 
 Thu, 04 Aug 2022 23:36:36 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
 by smtp.gmail.com with ESMTPSA id
 o4-20020a056512230400b0048a407f41bbsm357162lfu.238.2022.08.04.23.36.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Aug 2022 23:36:35 -0700 (PDT)
Message-ID: <10e93907-49ef-a3e6-e0b4-0b3e5f236f44@linaro.org>
Date: Fri, 5 Aug 2022 08:36:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
 tali.perry1@gmail.com, joel@jms.id.au, venture@google.com, yuenn@google.com,
 benjaminfair@google.com, jic23@kernel.org, minyard@acm.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <20220804181800.235368-1-tmaimon77@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220804181800.235368-1-tmaimon77@gmail.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 04/08/2022 20:18, Tomer Maimon wrote: > Add to npcm845
 KCS compatible string a fallback to npcm750 KCS compatible > string becuase
 NPCM845 and NPCM750 BMCs are using identical KCS modules. > > Sign [...] 
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
X-Headers-End: 1oJqwt-00039z-Gn
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
Cc: devicetree@vger.kernel.org, openbmc@lists.ozlabs.org,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 04/08/2022 20:18, Tomer Maimon wrote:
> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>

Your previous commit adding that compatible was simply wrong and not
matching the driver and it is not the first time. I think all Nuvoton
patches need much more careful review :(

You forgot the fixes tag:

Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")




Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
