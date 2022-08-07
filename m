Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 047A358BA1D
	for <lists+openipmi-developer@lfdr.de>; Sun,  7 Aug 2022 09:52:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKb4u-0000uH-Id; Sun, 07 Aug 2022 07:52:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tmaimon77@gmail.com>) id 1oKb4s-0000u6-S4
 for openipmi-developer@lists.sourceforge.net; Sun, 07 Aug 2022 07:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dJ6lR10UqT/svxgk5HLkzmMbK4zBIcx20Yej7ar36t8=; b=SxWZ0brMaqPOHZkCfW0w1NYscS
 dr2wc94O3DOx/2sKJEX3Th913v8+E66iKRF8iB5/bL2GItOxR8h6MbinBjHGb+tmlXuMHu/kaadCr
 0D36c8COSp/Vl3bPBQrKRWjFGTk6Vf8KjVOYgIjDpsWhYuHYFlfF2c42rudStPIzvKPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dJ6lR10UqT/svxgk5HLkzmMbK4zBIcx20Yej7ar36t8=; b=QJSvoOyw5KVUftYpfGAzi2TjtP
 T3kMYO/h4NkJtd9rZZylWIXUVy9FmlB5i0/YiYybq3zNKfP5wgBFmmgbloEt3QMRevERZWRWN3Lvc
 oLLaUzUwZXPTeHx24lqCoBDNB9QST08BbDVyqK+WYXq7LlPk1Zh1MxkWV7/1M/b/Fouw=;
Received: from mail-lf1-f45.google.com ([209.85.167.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKb4s-006X5w-W0
 for openipmi-developer@lists.sourceforge.net; Sun, 07 Aug 2022 07:52:03 +0000
Received: by mail-lf1-f45.google.com with SMTP id a9so8735016lfm.12
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 07 Aug 2022 00:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=dJ6lR10UqT/svxgk5HLkzmMbK4zBIcx20Yej7ar36t8=;
 b=XGMyyc5WU146GHv0QrCf1AOo0rhlUQXkxD5+jlAka0Bl8ngJ94avjqdprGhCdYBQty
 X4KVU0dP4rvH57xfRRxOQY3zGO9bsi+etLPvDmEL4tXXGTVRJZ0Fswh/dSdRMzqs3/GG
 JBylky7KzNCyMi1ZOHFlVVFWKBwMq183rp9iWKLiHRJsezL89FRtEpXNhaSEBK+lrXZv
 mTe2OjnX8x7qQ8olcn2Mo+BWzcQJiQWY0IQFedy9t0dF44zN5oQ19aBZhmYPVZ3wGRjE
 GfcN4Of7upv2NgEC2wSF0tC912tAGHTKW4BRue6Aecbj5OC46OhxoIJQViLQNs8gnp6o
 SoKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=dJ6lR10UqT/svxgk5HLkzmMbK4zBIcx20Yej7ar36t8=;
 b=b01++PFYXG0u3bdwVE508gbZBA4cAcS1NpLxQXHo6Af0IKWgcEnGTtO8NLQFQQ/9MA
 MMAg7xOByJjT5E8M0REvdvvODue34oui4Fr+T5qDWv5ZKGkZiNDC/VP/bMpL5iyJDB7d
 IHMYN89mIIr/JptDBtDH8WcRd732D0cDnr4P4G3eg/16ylzFQBM2ui47LvThmO4/Lsge
 MMwT8j2mOLRESfU53DkGaT/AcR2XyMZkj8Dk8moRl4v7573pInKs4npayDEGJ2WDqj+d
 aqzDnLGKvAB0xLz503PvqVmvzsiRXtgiQU7+SlpTZX3EOp1/NtEjS1abplpv+A3AHTSi
 BdYQ==
X-Gm-Message-State: ACgBeo1+qruRUlfJOuEwbdine+0mMdB9ZNA6gf2XJDExawccabue41YV
 9CW29aDuLdm5AEGFQ/ItuzrMN7tFItLDfLRvyXI=
X-Google-Smtp-Source: AA6agR4V/VrijA2jOsVzxZ7/8/SHHrOYwWX5/nci78brP/zjC9MoIstaGIPRY80wqK73i0+0xJA+/s0BVB0qXfOMxlI=
X-Received: by 2002:a19:6d0d:0:b0:48a:8b3c:e28 with SMTP id
 i13-20020a196d0d000000b0048a8b3c0e28mr4190351lfc.265.1659858716318; Sun, 07
 Aug 2022 00:51:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <10e93907-49ef-a3e6-e0b4-0b3e5f236f44@linaro.org>
In-Reply-To: <10e93907-49ef-a3e6-e0b4-0b3e5f236f44@linaro.org>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Sun, 7 Aug 2022 10:51:45 +0300
Message-ID: <CAP6Zq1ju4=PSiCuDaCi2NQTniaXBwmv5Qn6LoLayGmiayDCvYg@mail.gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Krzysztof, Thanks for your review. On Fri, 5 Aug 2022 at
 09:36, Krzysztof Kozlowski wrote: > > On 04/08/2022 20:18, Tomer Maimon wrote:
 > > Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
 > > string becuase [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tmaimon77[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.45 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.45 listed in list.dnswl.org]
X-Headers-End: 1oKb4s-006X5w-W0
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

Hi Krzysztof,

Thanks for your review.

On Fri, 5 Aug 2022 at 09:36, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 04/08/2022 20:18, Tomer Maimon wrote:
> > Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> > string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> >
> > Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>
> Your previous commit adding that compatible was simply wrong and not
> matching the driver and it is not the first time. I think all Nuvoton
> patches need much more careful review :(
Will do and sorry about all the mess...
>
> You forgot the fixes tag:
>
> Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
Will add the tag next version.
>
>
>
>
> Best regards,
> Krzysztof

Best regards,

Tomer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
