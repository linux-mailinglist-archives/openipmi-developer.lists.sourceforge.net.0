Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD76E581A63
	for <lists+openipmi-developer@lfdr.de>; Tue, 26 Jul 2022 21:42:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oGQRJ-0006Y3-RW; Tue, 26 Jul 2022 19:41:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tmaimon77@gmail.com>) id 1oGQRJ-0006Xw-2I
 for openipmi-developer@lists.sourceforge.net; Tue, 26 Jul 2022 19:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y73Cbks80QRaio2NF1SNbgs1LhYqx782nVW2SB+9Lm4=; b=DYr5iT5sUKgnZn3cVAC8XaFi6I
 RSAzWFsN12NuIMdaxAkLvFYxtagaSBD2cnMFX6lsPJew7/zcodhdZPztTtZBygAM8mqQFGJ9dFvEJ
 uUh2Ogg3E1mqlFPwj6ejQYO2ZuM0K3n5/phcpn+uSJlU7kscKu3hZ59g0thvsIzUSJ04=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y73Cbks80QRaio2NF1SNbgs1LhYqx782nVW2SB+9Lm4=; b=QY5q1kV/mY8XTg+sdEyL7eTpi3
 KnDxPMaGT3Hj39oR4crQRpOXmTED9gECCOIN2C9yZ8Y/ggk2r4OWRcQp22OCXdk3wnduJEYhdDFaZ
 092P2dRBOJXS5wS75iHfmE/CB7ASBUbFLmFPF3zmhjYB/yaeWeIwG0IKbagIsYhrskC8=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oGQRI-0008QH-Vp
 for openipmi-developer@lists.sourceforge.net; Tue, 26 Jul 2022 19:41:57 +0000
Received: by mail-lf1-f47.google.com with SMTP id y11so23966518lfs.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 26 Jul 2022 12:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y73Cbks80QRaio2NF1SNbgs1LhYqx782nVW2SB+9Lm4=;
 b=YMoEDzJyIqDGYPZ7iyFn6c9nULvNilXBrX/9GQARqgB2M+Gw+IDQUWwSP33U/JwZA/
 zkvgFKTc2ZWYboqN9FgfIzWIsSD1SpICZ+zI0IvASGms9JPe03pkdssCEg1q3fcFieh9
 a9REYm5D7TTl2U2DGrPtvO/eWDMhlCoBrBoaf/WzIvnt26kUBMTQKBKjCn8GwC4Bt5wq
 wgf/UdQ/wOa9bHyzxAmPvNZAFF+lkIY24NvmB5nkHqfHDxe1gQBHobhcPfR85vuO2EFS
 edv35OOfF4PzLxANBkVcMOZTgIAw8MDq3zF54npNNZldaMPgaY0Pa/DKKz651AMpIZUh
 5dIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y73Cbks80QRaio2NF1SNbgs1LhYqx782nVW2SB+9Lm4=;
 b=zEPtC0HYa0VAPCLGT16N6Jd9U6xlX7Y7cigPLMHox2D/wzDoWVEbZvf6gw+EPg3+1R
 Rnt805KAlT3fSHay//+qCC5TYVwmWrFx1IFVpZBPNZp8F/+ds4aQCsmtDss2VnJndYwL
 d8dTvm6GeFcDtBf10fqn0SCeO0JudYwWK9OgDTJj6JLP+HhO5JygV3ZCi5ky2ycosdEQ
 khEg/rL5tVhbQM+oy2qdOU8nVzV2Cy0ucHVD1fOnVXP2LYk/pIFJEbzgK9MR55tCWUK5
 9YPQ8X95uE/5yaFAd7wLNstB14e0Ll7/dowD0g8r9ILrQIDFgPuvXKuo8JCQujvNwDOd
 3ZXA==
X-Gm-Message-State: AJIora8tOgXUYuNRhgsgWuH7uNvJz1GGPqHMY0ltnHsYrRBN7T4aP0mB
 QFANBIHdeZmGdj72e4OLZn6pABibNILVK4tIoE8=
X-Google-Smtp-Source: AGRyM1uzC0o9Fyo0i233ZCX1c9oID7O1iPLRwqGSKX/Inr4uy4oQP80W/cr5a9qufJPHij/iX4kvsXVp2LMZnvRL62o=
X-Received: by 2002:a05:6512:22d2:b0:48a:1ec7:2220 with SMTP id
 g18-20020a05651222d200b0048a1ec72220mr6678625lfu.668.1658864510492; Tue, 26
 Jul 2022 12:41:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220717121124.154734-1-tmaimon77@gmail.com>
 <20220718125155.GA40038@minyard.net>
In-Reply-To: <20220718125155.GA40038@minyard.net>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Tue, 26 Jul 2022 22:41:38 +0300
Message-ID: <CAP6Zq1haOErfj2HZkqKwXZKr3+QvWP2VYK6QQOH5cjHYJ2rV0w@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On Mon, 18 Jul 2022 at 15:51, Corey Minyard wrote:
 > > On Sun, Jul 17, 2022 at 03:11:22PM +0300, Tomer Maimon wrote: > > This
 patch set adds Arbel NPCM8XX Keyboard Controller Style (KCS) support to [...]
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
 [209.85.167.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.47 listed in list.dnswl.org]
X-Headers-End: 1oGQRI-0008QH-Vp
Subject: Re: [Openipmi-developer] [PATCH v1 0/2] char: ipmi: kcs: add Arbel
 NPCM8XX support
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

Hi Corey,


On Mon, 18 Jul 2022 at 15:51, Corey Minyard <minyard@acm.org> wrote:
>
> On Sun, Jul 17, 2022 at 03:11:22PM +0300, Tomer Maimon wrote:
> > This patch set adds Arbel NPCM8XX Keyboard Controller Style (KCS) support to
> > KCS NPCM driver.
> >
> > The NPCM KCS driver tested on NPCM845 evaluation board.
>
> This seems reasonable, I've pulled it into my tree.  If anyone has any
> issues with this, please respond.
>
> -corey
>
> >
> > Tomer Maimon (2):
> >   dt-bindings: ipmi: Add npcm845 compatible
> >   char: ipmi: modify NPCM KCS configuration
> >
> >  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 5 +++--
> >  drivers/char/ipmi/Kconfig                                  | 6 +++---
> >  2 files changed, 6 insertions(+), 5 deletions(-)
> >
> > --
> > 2.33.0
> >

Sorry but I need to do a little fix in the document file.

Can I do it or have you already applied the patches?

Thanks,

Tomer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
